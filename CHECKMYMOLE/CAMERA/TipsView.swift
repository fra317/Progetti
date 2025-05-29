//
//  TipsView.swift
//  CAMERA
//
//  Created by Francesco Prisco on 16/10/24.
//


import SwiftUI
import UIKit

struct TipsView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView {
            VStack{
                
                
                ScrollView{
                    VStack(spacing: 30){
                        // Custom Search Bar with magnifying glass and microphone
                        ZStack{
                            Rectangle().fill(Color.black).opacity(0.1)
                                .frame(height : 230)
                                .cornerRadius(20)
                            
                            
                            NavigationLink(destination: DetailView()) {
                                HStack{
                                    
                                    
                                    VStack(alignment: .leading, spacing: 8){
                                        HStack() {
                                            Image(systemName: "info.circle").font(.system(size: 25))
                                                .foregroundColor(.black)
                                            
                                                .padding(.top, 0)
                                            Text("About Melanoma ").font(.title2).bold()
                                            
                                                .foregroundColor(.black)
                                            
                                        } .padding(.leading, 20)
                                        Text("Melanoma is an aggressive form of skin cancer that originates in melanocytes, the cells responsible for producing melanin, the pigment that gives skin its color…")
                                            .foregroundColor(.black)
                                            .opacity(0.3)
                                            .multilineTextAlignment(.leading)
                                            .font(.headline)
                                        
                                            .padding(.leading, 20)
                                            .padding(.trailing, 30)
                                        
                                        
                                        
                                        
                                    }
                                }
                                
                            }
                            
                        }     .padding(.horizontal, 15.0)
                        
                        ZStack{
                            Rectangle().fill(Color.black).opacity(0.1)
                                .frame(height : 230)
                                .cornerRadius(20)
                            
                            
                            NavigationLink(destination: ABCD()) {
                                HStack{
                                    
                                    
                                    VStack(alignment: .leading, spacing: 8){
                                        HStack() {
                                            Image(systemName: "figure.mixed.cardio.circle").font(.system(size: 25))
                                                .foregroundColor(.black)
                                            
                                                .padding(.top, 0)
                                            Text("What is ABCD ").font(.title2).bold()
                                            
                                                .foregroundColor(.black)
                                            
                                        } .padding(.leading, 20)
                                        Text("The ABCDE rule is a guideline for identifying potential melanomas by evaluating moles or skin lesions… and some other things")
                                            .foregroundColor(.black)
                                            .opacity(0.3)
                                            .multilineTextAlignment(.leading)
                                            .font(.headline)
                                        
                                            .padding(.leading, 20)
                                            .padding(.trailing, 30)
                                        
                                        
                                        
                                        
                                    }
                                }
                                
                            }
                            
                        }     .padding(.horizontal, 15.0)
                        
                        ZStack{
                            Rectangle().fill(Color.black).opacity(0.1)
                                .frame(height : 230)
                                .cornerRadius(20)
                            
                            
                            NavigationLink(destination: FAQ()) {
                                HStack{
                                    
                                    
                                    VStack(alignment: .leading, spacing: 8){
                                        HStack() {
                                            Image(systemName: "questionmark.circle").font(.system(size: 25))
                                                .foregroundColor(.black)
                                            
                                                .padding(.top, 0)
                                            Text("F.A.Q ").font(.title2).bold()
                                            
                                                .foregroundColor(.black)
                                            
                                        } .padding(.leading, 20)
                                        Text(" the FAQ provides clear and concise solutions. It's your go-to resource for instant support without needing to contact customer service.")
                                            .foregroundColor(.black)
                                            .opacity(0.3)
                                            .multilineTextAlignment(.leading)
                                            .font(.headline)
                                        
                                            .padding(.leading, 20)
                                            .padding(.trailing, 30)
                                    }
                                }
                                
                            }
                            
                        }     .padding(.horizontal, 15.0)
                    }
                }
                
            }
            .navigationTitle(Text("Tips"))
            
        }
    }
    
    
    
    
    
    
    
    struct DetailView: View {
        var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    Text("What is Melanoma?")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom, 10)
                    
                    Text("""
                                                                    Melanoma is an aggressive form of skin cancer that originates in melanocytes, the cells responsible for producing melanin, the pigment that gives skin its color. While it accounts for a smaller percentage of skin cancer cases, melanoma is significantly more dangerous due to its ability to spread (metastasize) to other parts of the body if not detected early. It often presents as new or changing moles, particularly those with irregular borders or varied colors. Risk factors include excessive UV exposure, family history, and having many moles.
                                                                    """)
                    .font(.body)
                    .lineSpacing(5)
                    .padding()
                    
                    Text("How can I prevent Melanoma?")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    Text("""
                                                                    To prevent melanoma, you can take several important steps:
                                                                    
                                                                        1.    Limit sun exposure: Stay in the shade during peak sunlight hours (10 a.m. - 4 p.m.).
                                                                        2.    Use sunscreen: Apply broad-spectrum sunscreen with an SPF of 30 or higher, and reapply every two hours.
                                                                        3.    Wear protective clothing: Use hats, sunglasses, and long-sleeved clothing.
                                                                        4.    Avoid tanning beds: They emit harmful UV rays that increase melanoma risk.
                                                                        5.    Regular skin checks: Self-examine your skin monthly and have yearly dermatologist check-ups to detect early signs.
                                                                    3. Wear protective clothing...
                                                                    """)
                    .font(.body)
                    .lineSpacing(5)
                    .padding(.bottom, 20)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(15)
                .padding()
            }
            .navigationTitle("What is Melanoma")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    struct ABCD : View {
        var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    Text("What is ABCD")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom, 10)
                    
                    Text("""
                        Melanoma is an aggressive form of skin cancer that originates in melanocytes, the cells responsible for producing melanin, the pigment that gives skin its color. While it accounts for a smaller percentage of skin cancer cases, melanoma is significantly more dangerous due to its ability to spread (metastasize) to other parts of the body if not detected early. It often presents as new or changing moles, particularly those with irregular borders or varied colors. Risk factors include excessive UV exposure, family history, and having many moles.
                        """)
                    .font(.body)
                    .lineSpacing(5)
                    .padding()
                    
                    Text("How can I prevent Melanoma?")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    Text("""
                        To prevent melanoma, you can take several important steps:
                        
                            1.    Limit sun exposure: Stay in the shade during peak sunlight hours (10 a.m. - 4 p.m.).
                            2.    Use sunscreen: Apply broad-spectrum sunscreen with an SPF of 30 or higher, and reapply every two hours.
                            3.    Wear protective clothing: Use hats, sunglasses, and long-sleeved clothing.
                            4.    Avoid tanning beds: They emit harmful UV rays that increase melanoma risk.
                            5.    Regular skin checks: Self-examine your skin monthly and have yearly dermatologist check-ups to detect early signs.
                        3. Wear protective clothing...
                        """)
                    .font(.body)
                    .lineSpacing(5)
                    .padding(.bottom, 20)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(15)
                .padding()
            }
            .navigationTitle("What is ABCD")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    
    
    
    
    struct FAQ : View {
        var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    Text("Frequently Asked Questions")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom, 10)
                    
                    Text("""
                        Melanoma is an aggressive form of skin cancer that originates in melanocytes, the cells responsible for producing melanin, the pigment that gives skin its color. While it accounts for a smaller percentage of skin cancer cases, melanoma is significantly more dangerous due to its ability to spread (metastasize) to other parts of the body if not detected early. It often presents as new or changing moles, particularly those with irregular borders or varied colors. Risk factors include excessive UV exposure, family history, and having many moles.
                        """)
                    .font(.body)
                    .lineSpacing(5)
                    .padding()
                    
                    Text("How can I prevent Melanoma?")
                        .font(.title2)
                        .bold()
                        .padding(.top, 10)
                    
                    Text("""
                                        To prevent melanoma, you can take several important steps:
                                        Limit sun exposure: Stay in the shade during peak sunlight hours (10 a.m. - 4 p.m.).
                                            2.    Use sunscreen: Apply broad-spectrum sunscreen with an SPF of 30 or higher, and reapply every two hours.
                                            3.    Wear protective clothing: Use hats, sunglasses, and long-sleeved clothing.
                                            4.    Avoid tanning beds: They emit harmful UV rays that increase melanoma risk.
                                            5.    Regular skin checks: Self-examine your skin monthly and have yearly dermatologist check-ups to detect early signs.
                                        3. Wear protective clothing...
                                        """)
                    .font(.body)
                    .lineSpacing(5)
                    .padding(.bottom, 20)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(15)
                .padding()
            }
            .navigationTitle("Frequently Asked Questions")
            .navigationBarTitleDisplayMode(.inline)
        }
    }}



#Preview {
    TipsView()
}

