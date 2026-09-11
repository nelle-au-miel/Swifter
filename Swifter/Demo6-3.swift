//
//  Demo6_3.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-09-11.
//

// EXTENTIONS

    
// Extension de Batterie
    
struct Batterie {
    var niveau: Int
}
    
extension Batterie {
    var estFaible: Bool {
        return niveau <= 20
    }
    
    func afficherEtat() {
        print("Batterie : /(niveau)%")
    }
}
    
// Validation d'un courriel
    

