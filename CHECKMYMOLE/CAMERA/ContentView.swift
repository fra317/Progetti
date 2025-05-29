//
//  ContentView.swift
//  NewMole
//
//  Created by aazzouz fatima ezzahra on 10/10/24.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
    @State private var images = [UIImage]()
    
    //photo library
    @State private var showPhotoPicker = false
    @State private var showCamera = false
    @State private var selectedItem: PhotosPickerItem?
    
    @State private var selectedImage: UIImage?
    
    @ObservedObject var classification = ImageClassification()
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.black
        // Color for unselected tab
        }
    
    var body: some View {
        
        
        TabView {
            Tab("Home", systemImage: "camera") {
                NavigationStack {
                    VStack {
                        Spacer()
                        
                        Menu{
                            Button {
                                resetPhotos()
                                showCamera.toggle()
                            } label: {
                                Label(title: {Text("Take from camera")}, icon: {Image(systemName: "camera.fill")})
                            }
                            
                            Button {
                                resetPhotos()
                                showPhotoPicker.toggle()
                            } label: {
                                Label(title: {Text("Choose from library")}, icon: {Image(systemName: "photo.fill")})
                            }
                        }label: {
                            
                            //check if image is taken
                            //by photo library
                            if let selectedImage {
                                VStack {
                                    Image(uiImage: selectedImage)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 350, height: 350)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                    Text(classification.classificationLabel)
                                        .padding()
                                }
                                
                            } else{
                                VStack{
                                    Text("Snap a picture to get started")
                                        .safeAreaPadding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                        .foregroundColor(Color(.black))
                                    Image(systemName: "camera.viewfinder")
                                        .imageScale(.large)
                                        .foregroundColor(Color.green)
                                        .font(.system(size: 70))
                                        .safeAreaPadding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                }
                            }
                            
                            
                        }
                        
                        Spacer()
                        
                        if selectedImage != nil {
                            Button {
                                selectedImage = nil
                            } label: {
                                Label("Go Back", systemImage: "chevron.left")
                                    .padding(5)
                                    .frame(maxWidth: 200)
                            }
                            .buttonStyle(.borderedProminent)
                            .padding(.bottom)
                            .transition(.scale.combined(with: .opacity))
                        }
                    }
                    .photosPicker(isPresented: $showPhotoPicker, selection: $selectedItem)
                    .fullScreenCover(isPresented: self.$showCamera) {
                        accessCameraView(selectedImage: self.$selectedImage)
                            .background(.black)
                    }
                    .onChange(of: selectedItem) {
                        Task {
                            if let loadedImage = try? await selectedItem?.loadTransferable(type: Data.self),
                               let uimg = UIImage(data: loadedImage) {
                                selectedImage = uimg
                                //                                classification.updateClassifications(for: uimg)
                            }
                            
                            print("Failed to load the image")
                        }
                    }
                    .onChange(of: selectedImage) { _, _ in
                        if let selectedImage {
                            classification.updateClassifications(for: selectedImage)
                            
                            images.append(selectedImage)
                        }
                    }
                    .navigationTitle("Camera")
                    .animation(.spring, value: selectedImage)
                }
            }
            
            
            Tab("Tips", systemImage: "book") {
                
                TipsView()
            }
            
            Tab("History", systemImage: "list.clipboard") {
                NavigationStack {
                    List(images, id: \.self) { image in
                        HStack {
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 200, maxHeight: 200)
                            
                            
                            Text(classification.classificationLabel)
                                .padding()
                        }
                        .padding()
                    }
                    .navigationTitle("History")
                }
            }
        }
        
        
         
    }
    
    func resetPhotos(){
       selectedItem = nil
       selectedImage = nil
   }
    
    // ugly things for making camera work

    struct accessCameraView: UIViewControllerRepresentable {
        
        @Binding var selectedImage: UIImage?
        @Environment(\.presentationMode) var isPresented
        
        func makeUIViewController(context: Context) -> UIImagePickerController {
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = true
            imagePicker.delegate = context.coordinator
            return imagePicker        }
        
        func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
            
        }
        
        func makeCoordinator() -> Coordinator {
            return Coordinator(picker: self)
        }
    }

    // Coordinator will help to preview the selected image in the View.
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var picker: accessCameraView
        
        init(picker: accessCameraView) {
            self.picker = picker
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let selectedImage = info[.originalImage] as? UIImage else { return }
            self.picker.selectedImage = selectedImage
            self.picker.isPresented.wrappedValue.dismiss()
        }
    }
    
    

}


#Preview {
    ContentView()
    
}
