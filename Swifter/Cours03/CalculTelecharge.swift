//
//  CalculTelecharge.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func calculTelecharge() {
    
    func calculerPourcentage(telecharge: Double, total: Double) -> Double {
        return 250 * 100 / 1000
    }
    
    func afficherProgression(pourcentage: Double) {
        print("Téléchargement : \(pourcentage) %")
    }
    
    let pourcentage = calculerPourcentage(telecharge: 250, total: 1000)
    afficherProgression(pourcentage: pourcentage)
}
