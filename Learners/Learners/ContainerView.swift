//
//  ContainerView.swift
//  Learners
//
//  Created by Francesco Prisco on 11/10/24.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        TabView {
            Tab("Learners", systemImage: "person.fill") {
                LearnersListView()
            }
            Tab("Teams", systemImage: "person.3.fill"){
                EmptyView()
            }
        }
    }
}

#Preview {
    ContainerView()
}
