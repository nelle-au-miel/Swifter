//
//  Produit.swift
//  ScrollViewCollectionsSwiftUI
//
//  Khalil Loghlam
//

import Foundation

struct Produitt: Identifiable, Hashable {
    let id = UUID()
    let nom: String
    let prix: Double
    let icone: String
}
