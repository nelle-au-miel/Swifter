//
//  CatalogueView.swift
//  ScrollViewCollectionsSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct CatalogueeView: View {

    private let categories = [
        Categorie(nom: "Audio", icone: "headphones"),
        Categorie(nom: "Ordinateurs", icone: "laptopcomputer"),
        Categorie(nom: "Téléphones", icone: "iphone"),
        Categorie(nom: "Accessoires", icone: "keyboard")
    ]

    private let produits = [
        Produitt(nom: "Casque", prix: 199.99, icone: "headphones"),
        Produitt(nom: "MacBook", prix: 1499.99, icone: "laptopcomputer"),
        Produitt(nom: "iPhone", prix: 1199.99, icone: "iphone"),
        Produitt(nom: "Clavier", prix: 129.99, icone: "keyboard"),
        Produitt(nom: "Écran", prix: 499.99, icone: "display"),
        Produitt(nom: "Souris", prix: 89.99, icone: "computermouse")
    ]

    private let colonnes = [
        GridItem(.adaptive(minimum: 340), spacing: 16)
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {

                    Text("Catégories")
                        .font(.title2)
                        .bold()

                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 16) {
                            ForEach(categories) { categorie in
                                CategorieCardView(categorie: categorie)
                            }
                        }
                    }
                    .scrollIndicators(.hidden)

                    Text("Produits")
                        .font(.title2)
                        .bold()

                    LazyVGrid(
                        columns: colonnes,
                        spacing: 16
                    ) {
                        ForEach(produits) { produit in
                            ProduitCardView(produit: produit)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Catalogue")
        }
    }
}

#Preview {
    CatalogueeView()
}
