//
//  SuperheroCardView.swift
//  Superhero Card
//
//  Created by Pasquale Vittoriosi on 08/09/22.
//  Updated by Tiago Pereira on 17/10/24.
//

import SwiftUI

struct SuperheroCardView: View {
    
    var body: some View {
        
        /**
         Select the components here or directly from the canvas
         and edit the properties from the inspector panel on the right
         */
        
        VStack {
            Text("CescoP")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(LinearGradient(colors: [.brown,.purple], startPoint: .leading, endPoint: .trailing))
                .padding(.top, 30.0)
            
            /**
             Change the name of the image here.
             Remember to put the image in the *Assets* folder in the Project navigator panel on the left
             */
            Image("Placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(40)
                .frame(width: 240, height: 240)
                .padding(.horizontal, 40)
            
            Text("Prisciello")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(LinearGradient(colors: [.purple,.brown], startPoint: .leading, endPoint: .trailing))
                .padding()
            
            Text("Powers:")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Text("Invisibility, read minds")
                .foregroundStyle(LinearGradient(colors: [.purple,.brown], startPoint: .leading, endPoint: .trailing))
                .padding(.horizontal)
            
            Text("Weaknesses:")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Text("Womens, Germans, Kim")
                .foregroundStyle(LinearGradient(colors: [.purple,.brown], startPoint: .leading, endPoint: .trailing))
                .padding(.horizontal)
            
            Text("Famous for:")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Text("Nobel Prize For ")
                .foregroundStyle(.white)
                .padding([.horizontal, .bottom], 30.0)
        }
        
        .background {
            RoundedRectangle(cornerRadius: 40)
                .foregroundStyle(Color.blue.opacity(0.4))
            RoundedRectangle(cornerRadius: 40)
                .strokeBorder(.black, lineWidth: 10)
        }
        
        .padding()
    }
}

#Preview {
    SuperheroCardView()
}
