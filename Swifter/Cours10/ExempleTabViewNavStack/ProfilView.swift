//
//  ProfilView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct ProfilView: View {

    var body: some View {
        VStack(spacing: 20) {

            Image(systemName: "person.circle.fill")
                .font(.system(size: 80))

            Text("Alex Martin")
                .font(.title)
                .bold()

            Text("alex.martin@example.com")
                .foregroundStyle(.secondary)

            NavigationLink("Paramètres") {
                ParametresView()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Profil")
    }
}
