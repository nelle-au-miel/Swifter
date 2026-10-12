//
//  HistoriqueBatterie.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func historiqueBatterie() {
    let historiqueBatterie = [100, 90, 75, 60, 45, 20, 10]
    
    for batterie in historiqueBatterie {
        var etat = ""
        if batterie > 50 {
            etat = "Normal"
        }
        else if batterie > 20 {
            etat = "Faible"
        }
        else {
            etat = "Critique"
        }
        print("\(batterie) % -> \(etat)")
    }
}
