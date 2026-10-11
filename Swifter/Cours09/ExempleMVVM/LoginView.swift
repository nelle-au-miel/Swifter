//
//  LoginView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct LoginView: View {

    @State private var viewModel = LoginViewModel()

    var body: some View {

        @Bindable var viewModel = viewModel

        VStack(spacing: 20) {

            Image(systemName: "person.crop.circle")
                .font(.system(size: 70))

            Text("Connexion")
                .font(.title)
                .bold()

            TextField(
                "Courriel",
                text: $viewModel.email
            )
            .textFieldStyle(.roundedBorder)
            .textInputAutocapitalization(.never)
            .keyboardType(.emailAddress)

            SecureField(
                "Mot de passe",
                text: $viewModel.motDePasse
            )
            .textFieldStyle(.roundedBorder)

            Button("Se connecter") {
                viewModel.connecter()
            }
            .buttonStyle(.borderedProminent)
            .disabled(!viewModel.formulaireValide)

            if !viewModel.message.isEmpty {
                Text(viewModel.message)
                    .foregroundStyle(
                        viewModel.utilisateur == nil ? .red : .green
                    )
            }

            if let utilisateur = viewModel.utilisateur {
                VStack(spacing: 8) {
                    Text("Utilisateur connecté")
                        .font(.headline)

                    Text(utilisateur.nom)
                        .bold()

                    Text(utilisateur.email)
                        .foregroundStyle(.secondary)

                    Button("Déconnexion") {
                        viewModel.deconnecter()
                    }
                    .buttonStyle(.bordered)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.10))
                .cornerRadius(12)
            }

            Button("Réinitialiser") {
                viewModel.reinitialiser()
            }
            .buttonStyle(.borderless)
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
