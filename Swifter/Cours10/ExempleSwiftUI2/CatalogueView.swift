//
//  CatalogueView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct CatalogueView: View {
    @State private var viewModel = CatalogueViewModel()

    var body: some View {
        @Bindable var viewModel = viewModel

        NavigationStack {
            VStack(spacing: 16) {
                TextField(
                    "Rechercher un produit",
                    text: $viewModel.recherche
                )
                .textFieldStyle(.roundedBorder)

                Toggle(
                    "Produits disponibles seulement",
                    isOn: $viewModel.afficherDisponiblesSeulement
                )

                List(viewModel.produitsFiltres) { produit in
                    NavigationLink(value: produit) {
                        ProduitRowView(produit: produit)
                    }
                }
                .listStyle(.plain)

                Button("Réinitialiser les filtres") {
                    viewModel.reinitialiserFiltres()
                }
                .buttonStyle(.bordered)
            }
            .padding()
            .navigationTitle("Catalogue")
            .navigationDestination(for: Produit.self) { produit in
                DetailProduitView(produit: produit)
            }
        }
    }
}
