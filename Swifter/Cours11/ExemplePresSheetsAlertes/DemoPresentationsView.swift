//
//  DemoPresentationsView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct DemoPresentationsView: View {

    var body: some View {

        TabView {

            ProfilView()
                .tabItem {
                    Label(
                        "Profil",
                        systemImage: "person"
                    )
                }

            ProduitsSheetView()
                .tabItem {
                    Label(
                        "Produits",
                        systemImage: "shippingbox"
                    )
                }
        }
    }
}

#Preview {
    DemoPresentationsView()
}
