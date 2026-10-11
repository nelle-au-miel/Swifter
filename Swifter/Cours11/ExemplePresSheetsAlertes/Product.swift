//
//  Produit.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let nom: String
    let prix: Double
}
