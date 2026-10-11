//
//  ModifierContactView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct ModifierContactView: View {

    @Environment(\.dismiss) private var dismiss
    @Binding var contact: Contact

    @State private var nom: String
    @State private var courriel: String
    @State private var telephone: String
    @State private var notes: String

    init(contact: Binding<Contact>) {
        _contact = contact
        _nom = State(initialValue: contact.wrappedValue.nom)
        _courriel = State(
            initialValue: contact.wrappedValue.courriel
        )
        _telephone = State(
            initialValue: contact.wrappedValue.telephone
        )
        _notes = State(
            initialValue: contact.wrappedValue.notes
        )
    }

    var body: some View {

        NavigationStack {

            Form {

                Section("Informations") {

                    TextField("Nom", text: $nom)

                    TextField("Courriel", text: $courriel)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()

                    TextField(
                        "Téléphone",
                        text: $telephone
                    )
                    .keyboardType(.phonePad)
                }

                Section("Notes") {
                    TextEditor(text: $notes)
                        .frame(minHeight: 120)
                }
            }
            .navigationTitle("Modifier")
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
                        contact.nom = nom
                        contact.courriel = courriel
                        contact.telephone = telephone
                        contact.notes = notes
                        dismiss()
                    }
                }
            }
        }
    }
}
