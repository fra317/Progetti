//
//  LearnersListView.swift
//  Learners
//
//  Created by Francesco Prisco on 10/10/24.
//

//MARK:FRAMEWORK
import SwiftUI

struct LearnersListView: View {
    //MARK:PROPERTIES
    var learnersData = LearnerViewModel()
    
    //MARK:BODY
    var body: some View {
        NavigationStack {
            List {
                ForEach(learnersData.learners){
                    learner in NavigationLink(destination: LearnersDataView(currentLearner: learner)) {
                        
                    HStack(){
                        Image(systemName: "person.fill")
                            .foregroundStyle(learner.favoriteColor)
                        Text(learner.name + " " + learner.surname)
                    }
                  }
                }
            }
            .navigationTitle("Learners")
        }//end navigationstack
    }
}
//MARK:PREVIEW
#Preview {
    LearnersListView()
}
