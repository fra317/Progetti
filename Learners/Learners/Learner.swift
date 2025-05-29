//
//  Learner.swift
//  Learners
//
//  Created by Francesco Prisco on 10/10/24.
//

import Foundation
import SwiftUI

struct Learner : Identifiable {
    var id = UUID()
    var name : String
    var surname : String
    var favoriteColor : Color
    var description : String = "No description available"
    var image : String = "noimage"
}
