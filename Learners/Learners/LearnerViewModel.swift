//
//  LearnerViewModel.swift
//  Learners
//
//  Created by Francesco Prisco on 10/10/24.
//

import Foundation
import SwiftUI

class LearnerViewModel {
    var learners = [
        Learner(name: "Santo", surname: "Gaglione", favoriteColor: Color.purple, description: "I am not here", image: "filippo"),
        Learner(name: "Dario", surname: "SaldaMarco", favoriteColor: Color.green),
        Learner(name: "Britney", surname: "Spears", favoriteColor: Color.pink, description: "Oops i did it again", image: "mina"),
        Learner(name: "Giusy", surname: "Di Paola", favoriteColor: Color.black)
    ]
}
