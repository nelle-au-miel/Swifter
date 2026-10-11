//
//  ProduitsSheetView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct ProduitsSheetView: View {

    let produits = [
        Product(
            nom: "iPhone",
            prix: 1199
        ),
        Product(
            nom: "MacBook Air",
            prix: 1499
        ),
        Product(
            nom: "AirPods",
            prix: 249
        )
    ]

    @State private var produitSelectionne: Product?

    var body: some View {

        NavigationStack {

            List(produits) { produit in

                Button {
                    produitSelectionne = produit
                } label: {

                    HStack {

                        Text(produit.nom)

                        Spacer()

                        Text(
                            produit.prix,
                            format: .currency(code: "CAD")
                        )
                        .foregroundStyle(.secondary)
                    }
                }
                .buttonStyle(.plain)
            }
            .navigationTitle("Produits")
            .sheet(
                item: $produitSelectionne
            ) { produit in
                DetailProduitSheetView(
                    produit: produit
                )
            }
        }
    }
}

#Preview {
    ProduitsSheetView()
}
