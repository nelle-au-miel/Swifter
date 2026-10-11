//
//  AjouterContactView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct AjouterContactView: View {

    enum ChampSaisie: Hashable {
        case nom
        case courriel
        case telephone
        case motDePasse
    }

    @Environment(\.dismiss) private var dismiss

    @State private var viewModel = ContactFormViewModel()
    @State private var afficherMotDePasse = false

    @FocusState private var champActif: ChampSaisie?

    let onSave: (Contact) -> Void

    var body: some View {

        @Bindable var viewModel = viewModel

        NavigationStack {

            Form {

                Section("Informations") {

                    TextField("Nom", text: $viewModel.nom)
                        .textContentType(.name)
                        .focused($champActif, equals: .nom)
                        .submitLabel(.next)
                        .onSubmit {
                            champActif = .courriel
                        }

                    TextField(
                        "Courriel",
                        text: $viewModel.courriel
                    )
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .focused($champActif, equals: .courriel)
                    .submitLabel(.next)
                    .onSubmit {
                        champActif = .telephone
                    }

                    TextField(
                        "Téléphone",
                        text: $viewModel.telephone
                    )
                    .keyboardType(.phonePad)
                    .focused($champActif, equals: .telephone)
                }

                Section("Accès") {

                    HStack {

                        if afficherMotDePasse {
                            TextField(
                                "Mot de passe",
                                text: $viewModel.motDePasse
                            )
                            .focused(
                                $champActif,
                                equals: .motDePasse
                            )
                        } else {
                            SecureField(
                                "Mot de passe",
                                text: $viewModel.motDePasse
                            )
                            .focused(
                                $champActif,
                                equals: .motDePasse
                            )
                        }

                        Button {
                            afficherMotDePasse.toggle()
                        } label: {
                            Image(
                                systemName:
                                    afficherMotDePasse
                                    ? "eye.slash"
                                    : "eye"
                            )
                        }
                        .buttonStyle(.plain)
                    }
                }

                Section("Notes") {
                    TextEditor(text: $viewModel.notes)
                        .frame(minHeight: 120)
                }
            }
            .navigationTitle("Nouveau contact")
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
                        champActif = nil
                        onSave(viewModel.creerContact())
                        dismiss()
                    }
                }
            }
            .onAppear {
                champActif = .nom
            }
        }
    }
}

#Preview {
    AjouterContactView { contact in
        print(contact.nom)
    }
}
