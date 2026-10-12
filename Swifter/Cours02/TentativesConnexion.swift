//
//  TentativesConnexion.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func tentativeConnexion() {
    let maxTentatives = 4
    
    for tentative in 1...maxTentatives {
        print("Tentative de connexion : \(tentative)")
        
        if tentative == 3 {
            print("Connexion réussie")
            break
        }
    }
}
