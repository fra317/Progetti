//
//  LearnersDataView.swift
//  Learners
//
//  Created by Francesco Prisco on 11/10/24.
//

//MARK:FRAMEWORK
import SwiftUI

struct LearnersDataView: View {
    
    //MARK:PROPERTIES
    var currentLearner : Learner
    
    //MARK:BODY
    var body: some View {
        VStack(){
            Image(currentLearner.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 270, height: 270)
                .clipShape(Circle())
                .padding()
            Text(currentLearner.name + " " + currentLearner.surname)
                .font(.largeTitle)
                .bold()
            Text(currentLearner.description)
                .font(.title2)
        }
    }
}


//MARK:PREVIEW
#Preview {
    LearnersDataView(currentLearner: Learner(name: "Britney", surname: "Spears", favoriteColor: Color.pink))
}
