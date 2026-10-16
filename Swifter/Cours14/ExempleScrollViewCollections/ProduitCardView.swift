//
//  ProduitCardView.swift
//  ScrollViewCollectionsSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct ProduitCardView: View {
    let produit: Produit

    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: produit.icone)
                .font(.system(size: 38))

            Text(produit.nom)
                .font(.headline)
                .multilineTextAlignment(.center)

            Text(
                produit.prix,
                format: .currency(code: "CAD")
            )
            .foregroundStyle(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 150)
        .background(.gray.opacity(0.12))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
