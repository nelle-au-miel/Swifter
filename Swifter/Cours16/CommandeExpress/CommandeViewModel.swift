//
//  CommandeViewModel.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-30.
//

import Observation


@Observable class CommandeViewModel {
    
    var prodvit: Prodvit = Prodvit(nom: "PS Vita", prix: 299.99)
    var quantite: Int = 1
    var total: Double { return Double(quantite) * prodvit.prix }
    
    init(prodvit: Prodvit, quantite: Int) {
        self.prodvit = prodvit
        self.quantite = quantite
    }
    
    func augmenter() {
        quantite += 1
    }
    
    func diminuer() {
        quantite -= 1
    }
    
    func reinitialiser() {
        quantite = 1
        prodvit.nom = "PS Vita"
        prodvit.prix = 299.99
    }
}
