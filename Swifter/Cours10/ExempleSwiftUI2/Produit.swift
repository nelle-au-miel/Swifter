//
//  Produit.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import Foundation

struct Produit: Identifiable, Hashable {
    let id = UUID()
    let nom: String
    let prix: Double
    let categorie: String
    let disponible: Bool
}
