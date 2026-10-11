//
//  AccueilView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct AccueilView: View {

    @Binding var ongletSelectionne: Onglet

    var body: some View {
        VStack(spacing: 24) {

            Image(systemName: "airplane")
                .font(.system(size: 70))

            Text("Bienvenue")
                .font(.largeTitle)
                .bold()

            Text(
                "Consultez vos réservations ou gérez votre profil."
            )
            .multilineTextAlignment(.center)
            .foregroundStyle(.secondary)

            Button("Voir mes réservations") {
                ongletSelectionne = .reservations
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Accueil")
    }
}

#Preview {
    NavigationStack {
        AccueilView(
            ongletSelectionne: .constant(.accueil)
        )
    }
}
