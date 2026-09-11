//
//  Exemple.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-09-11.
//

import SwiftUI

struct ViewsControlsDemoView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var notificationsEnabled = true
    @State private var message = "Aucune sauvegarde effectuée"

    var body: some View {
        VStack(spacing: 18) {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 72))
                .foregroundStyle(.blue)

            Text("Profil utilisateur")
                .font(.title)
                .bold()

            Text("Vues, contrôles et modificateurs")
                .font(.subheadline)
                .foregroundStyle(.secondary)

            TextField("Nom", text: $name)
                .textFieldStyle(.roundedBorder)

            TextField("Courriel", text: $email)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)

            SecureField("Mot de passe", text: $password)
                .textFieldStyle(.roundedBorder)

            Toggle("Activer les notifications", isOn: $notificationsEnabled)

            Label(
                notificationsEnabled ? "Notifications activées" : "Notifications désactivées",
                systemImage: notificationsEnabled ? "bell.fill" : "bell.slash.fill"
            )
            .foregroundStyle(notificationsEnabled ? .green : .secondary)

            Button("Enregistrer") {
                message = """
                Nom : \(name)
                Courriel : \(email)
                Notifications : \(notificationsEnabled)
                """
                print(message)
            }
            .buttonStyle(.borderedProminent)
            .frame(maxWidth: .infinity)
            .disabled(name.isEmpty || email.isEmpty)
            .opacity(name.isEmpty || email.isEmpty ? 0.5 : 1.0)

            Text(message)
                .font(.caption)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.gray.opacity(0.12))
                .cornerRadius(12)
        }
        .padding()
    }
}
