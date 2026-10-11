//
//  DetailProduitSheetView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct DetailProduitSheetView: View {

    let produit: Product

    @Environment(\.dismiss)
    private var dismiss

    var body: some View {

        VStack(spacing: 20) {

            Image(systemName: "shippingbox.fill")
                .font(.system(size: 70))

            Text(produit.nom)
                .font(.largeTitle)
                .bold()

            Text(
                produit.prix,
                format: .currency(code: "CAD")
            )
            .font(.title2)

            Button("Fermer") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .presentationDetents([
            .medium,
            .large
        ])
    }
}

#Preview {
    DetailProduitSheetView(
        produit: Product(
            nom: "iPhone",
            prix: 1199
        )
    )
}
