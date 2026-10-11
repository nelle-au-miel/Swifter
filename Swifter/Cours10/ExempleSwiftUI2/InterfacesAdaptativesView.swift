//
//  InterfacesAdaptativesView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct InterfacesAdaptativesView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    .blue.opacity(0.20),
                    .purple.opacity(0.12)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            ViewThatFits {
                HStack(spacing: 30) {
                    avatar
                    information
                }

                VStack(spacing: 22) {
                    avatar
                    information
                }
            }
            .padding()
        }
    }

    private var avatar: some View {
        Image(systemName: "person.crop.circle.fill")
            .font(.system(size: 100))
            .frame(minWidth: 130, minHeight: 130)
    }

    private var information: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Alex Martin")
                .font(.largeTitle)
                .bold()
                .minimumScaleFactor(0.7)

            Text("Développeur iOS")
                .font(.headline)
                .foregroundStyle(.secondary)

            Text(
                "Cette vue adapte automatiquement sa disposition selon l'espace disponible."
            )

            Button("Modifier le profil") {
            }
            .buttonStyle(.borderedProminent)
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: 420, alignment: .leading)
    }
}
