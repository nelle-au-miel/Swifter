//
//  DetailProduitView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct DetailProduitView: View {
    let produit: Produit

    @Environment(\.dismiss) private var dismiss
    @State private var quantite = 1

    var body: some View {
        ZStack {
            Color.gray.opacity(0.08)
                .ignoresSafeArea()

            ScrollView {
                ViewThatFits {
                    HStack(alignment: .top, spacing: 30) {
                        illustration
                        informations
                    }

                    VStack(spacing: 24) {
                        illustration
                        informations
                    }
                }
                .padding()
            }
        }
        .navigationTitle(produit.nom)
        .navigationBarTitleDisplayMode(.inline)
    }

    private var illustration: some View {
        Image(systemName: "shippingbox.fill")
            .font(.system(size: 100))
            .frame(minWidth: 150, minHeight: 150)
            .background(.blue.opacity(0.12))
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }

    private var informations: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text(produit.nom)
                .font(.largeTitle)
                .bold()
                .minimumScaleFactor(0.7)

            Text(produit.categorie)
                .font(.headline)
                .foregroundStyle(.secondary)

            Text(produit.prix, format: .currency(code: "CAD"))
                .font(.title2)

            Stepper(
                "Quantité : \(quantite)",
                value: $quantite,
                in: 1...10
            )

            Button("Retour") {
                dismiss()
            }
            .buttonStyle(.bordered)
        }
        .frame(maxWidth: 420, alignment: .leading)
    }
}
