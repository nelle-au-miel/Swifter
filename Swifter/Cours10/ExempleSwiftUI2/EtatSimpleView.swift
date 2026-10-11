//
//  EtatSimpleView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct EtatSimpleView: View {
    @State private var nom = ""
    @State private var notifications = true
    @State private var compteur = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("Gestion de l'état")
                .font(.title)
                .bold()

            TextField("Nom", text: $nom)
                .textFieldStyle(.roundedBorder)

            Toggle("Notifications", isOn: $notifications)

            HStack {
                Button("-") {
                    compteur -= 1
                }

                Text("\(compteur)")
                    .font(.title2)
                    .frame(minWidth: 50)

                Button("+") {
                    compteur += 1
                }
            }
            .buttonStyle(.bordered)

            ResumeEtatView(
                nom: nom,
                notifications: $notifications,
                compteur: compteur
            )
        }
        .padding()
    }
}

struct ResumeEtatView: View {
    let nom: String
    @Binding var notifications: Bool
    let compteur: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(nom.isEmpty ? "Nom non défini" : "Nom : \(nom)")
            Text("Compteur : \(compteur)")
            Toggle("Notifications", isOn: $notifications)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.gray.opacity(0.12))
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}
