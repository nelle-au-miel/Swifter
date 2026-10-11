//
//  LayoutDemoView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct LayoutDemoView: View {
    var body: some View {
        ZStack {
            Color.gray.opacity(0.10)
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Text("Mise en page SwiftUI")
                    .font(.title)
                    .bold()

                profileCard

                vehicleCard

                Spacer()

                HStack {
                    Button("Annuler") {
                        print("Annuler")
                    }
                    .buttonStyle(.bordered)

                    Spacer()

                    Button("Confirmer") {
                        print("Confirmer")
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            .padding()
        }
    }

    private var profileCard: some View {
        HStack(spacing: 16) {
            Image(systemName: "person.circle.fill")
                .font(.system(size: 54))
                .foregroundStyle(.blue)

            VStack(alignment: .leading, spacing: 6) {
                Text("Alex Martin")
                    .font(.headline)

                Text("Développeur iOS")
                    .foregroundStyle(.secondary)

                Text("Montréal")
                    .font(.caption)
            }

            Spacer()

            Image(systemName: "checkmark.circle.fill")
                .foregroundStyle(.green)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(16)
    }

    private var vehicleCard: some View {
        VStack(spacing: 14) {
            HStack {
                ZStack {
                    Circle()
                        .fill(.blue.opacity(0.12))
                        .frame(width: 56, height: 56)

                    Image(systemName: "car.fill")
                        .font(.title2)
                        .foregroundStyle(.blue)
                }

                VStack(alignment: .leading, spacing: 5) {
                    Text("Tesla Model 3")
                        .font(.headline)

                    Text("Électrique")
                        .foregroundStyle(.secondary)
                }

                Spacer()

                Image(systemName: "chevron.right")
                    .foregroundStyle(.secondary)
            }

            HStack {
                Label("Disponible", systemImage: "checkmark.circle")
                    .foregroundStyle(.green)

                Spacer()

                Text("82 %")
                    .bold()
            }

            Button("Détails") {
                print("Afficher les détails")
            }
            .buttonStyle(.borderedProminent)
            .frame(maxWidth: .infinity)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(16)
    }
}

#Preview {
    LayoutDemoView()
}
