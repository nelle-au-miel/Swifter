//
//  DemoRootView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct DemoRootView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Gestion de l'état") {
                    EtatSimpleView()
                }

                NavigationLink("Interface adaptative") {
                    InterfacesAdaptativesView()
                }

                NavigationLink("Catalogue MVVM") {
                    CatalogueView()
                }
            }
            .navigationTitle("Exemples SwiftUI")
        }
    }
}
