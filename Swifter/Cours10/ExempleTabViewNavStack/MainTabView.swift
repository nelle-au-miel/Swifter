//
//  MainTabView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct MainTabView: View {

    @State private var ongletSelectionne: Onglet = .accueil

    var body: some View {
        TabView(selection: $ongletSelectionne) {

            NavigationStack {
                AccueilView(
                    ongletSelectionne: $ongletSelectionne
                )
            }
            .tabItem {
                Label("Accueil", systemImage: "house")
            }
            .tag(Onglet.accueil)

            NavigationStack {
                ReservationsView()
            }
            .tabItem {
                Label("Réservations", systemImage: "calendar")
            }
            .tag(Onglet.reservations)

            NavigationStack {
                ProfilView()
            }
            .tabItem {
                Label("Profil", systemImage: "person")
            }
            .tag(Onglet.profil)
        }
    }
}

#Preview {
    MainTabView()
}
