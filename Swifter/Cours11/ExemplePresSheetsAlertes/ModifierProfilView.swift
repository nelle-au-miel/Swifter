//
//  ModifierProfilView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct ModifierProfilView: View {

    @Binding var profil: Profil

    @Environment(\.dismiss)
    private var dismiss

    @State private var nom: String
    @State private var courriel: String

    init(profil: Binding<Profil>) {
        _profil = profil
        _nom = State(
            initialValue: profil.wrappedValue.nom
        )
        _courriel = State(
            initialValue: profil.wrappedValue.courriel
        )
    }

    var body: some View {

        NavigationStack {

            Form {

                Section("Informations") {

                    TextField(
                        "Nom",
                        text: $nom
                    )

                    TextField(
                        "Courriel",
                        text: $courriel
                    )
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                }
            }
            .navigationTitle("Modifier le profil")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {

                ToolbarItem(
                    placement: .cancellationAction
                ) {
                    Button("Annuler") {
                        dismiss()
                    }
                }

                ToolbarItem(
                    placement: .confirmationAction
                ) {
                    Button("Enregistrer") {
                        profil.nom = nom
                        profil.courriel = courriel
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    ModifierProfilView(
        profil: .constant(
            Profil(
                nom: "Alex Martin",
                courriel: "alex.martin@example.com"
            )
        )
    )
}
