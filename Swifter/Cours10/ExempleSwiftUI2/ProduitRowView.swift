//
//  ProduitRowView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct ProduitRowView: View {
    let produit: Produit

    var body: some View {
        ViewThatFits {
            HStack(spacing: 16) {
                produitImage
                produitInformation
                Spacer()
                statut
            }

            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    produitImage
                    produitInformation
                }
                statut
            }
        }
        .padding(.vertical, 6)
    }

    private var produitImage: some View {
        Image(systemName: "shippingbox.fill")
            .font(.system(size: 34))
            .frame(width: 48, height: 48)
            .background(.blue.opacity(0.12))
            .clipShape(Circle())
    }

    private var produitInformation: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(produit.nom)
                .font(.headline)

            Text(produit.categorie)
                .foregroundStyle(.secondary)

            Text(produit.prix, format: .currency(code: "CAD"))
                .font(.subheadline)
        }
    }

    private var statut: some View {
        Label(
            produit.disponible ? "Disponible" : "Indisponible",
            systemImage: produit.disponible
                ? "checkmark.circle.fill"
                : "xmark.circle.fill"
        )
        .foregroundStyle(produit.disponible ? .green : .red)
        .font(.caption)
    }
}
