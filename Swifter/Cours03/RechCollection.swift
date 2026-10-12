//
//  RechCollection.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func rechCollection() {
    let appareils = ["iPhone", "iPad", "Apple Watch", "Mac"]
    
    let recherche = "iPad"
    
    if appareils.contains(recherche) {
        print("\(recherche) trouvé")
    } else {
        print("Appareil introuvable")
    }
}
