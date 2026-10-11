//
//  ProfilView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct ProfileView: View {

    @State private var profil = Profil(
        nom: "Alex Martin",
        courriel: "alex.martin@example.com"
    )

    @State private var afficherModification = false
    @State private var afficherActions = false
    @State private var afficherSuppression = false
    @State private var afficherPleinEcran = false

    var body: some View {

        NavigationStack {

            VStack(spacing: 24) {

                Image(systemName: "person.circle.fill")
                    .font(.system(size: 90))

                Text(profil.nom)
                    .font(.title)
                    .bold()

                Text(profil.courriel)
                    .foregroundStyle(.secondary)

                Button("Modifier le profil") {
                    afficherModification = true
                }
                .buttonStyle(.borderedProminent)

                Button("Actions") {
                    afficherActions = true
                }
                .buttonStyle(.bordered)

                Button("Présentation plein écran") {
                    afficherPleinEcran = true
                }
                .buttonStyle(.bordered)
            }
            .padding()
            .navigationTitle("Profil")
            .sheet(
                isPresented: $afficherModification
            ) {
                ModifierProfilView(
                    profil: $profil
                )
                .presentationDetents([
                    .medium,
                    .large
                ])
                .presentationDragIndicator(
                    .visible
                )
            }
            .fullScreenCover(
                isPresented: $afficherPleinEcran
            ) {
                PresentationPleinEcranView()
            }
            .confirmationDialog(
                "Actions sur le profil",
                isPresented: $afficherActions,
                titleVisibility: .visible
            ) {
                Button("Partager") {
                    print("Partager")
                }

                Button("Déconnexion") {
                    print("Déconnexion")
                }

                Button(
                    "Supprimer le profil",
                    role: .destructive
                ) {
                    afficherSuppression = true
                }

                Button(
                    "Annuler",
                    role: .cancel
                ) {
                }
            }
            .alert(
                "Supprimer le profil ?",
                isPresented: $afficherSuppression
            ) {
                Button(
                    "Supprimer",
                    role: .destructive
                ) {
                    supprimerProfil()
                }

                Button(
                    "Annuler",
                    role: .cancel
                ) {
                }
            } message: {
                Text(
                    "Cette action est irréversible."
                )
            }
        }
    }

    private func supprimerProfil() {
        profil = Profil(
            nom: "",
            courriel: ""
        )
    }
}

#Preview {
    ProfileView()
}
