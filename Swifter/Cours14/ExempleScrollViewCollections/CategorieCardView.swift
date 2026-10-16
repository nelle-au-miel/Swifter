//
//  CategorieCardView.swift
//  ScrollViewCollectionsSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct CategorieCardView: View {
    let categorie: Categorie

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: categorie.icone)
                .font(.title)

            Text(categorie.nom)
                .font(.subheadline)
                .bold()
        }
        .frame(width: 120, height: 100)
        .background(.gray.opacity(0.12))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
