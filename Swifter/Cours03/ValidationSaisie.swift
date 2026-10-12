//
//  ValidationSaisie.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func validationSaisie() {
    let saisieBatterie = "75"
    
    let batterie: Int? = Int(saisieBatterie)
    
    if let batterie {
        if batterie > 0 && batterie < 100 {
            print("Batterie : \(batterie) %")
        }
    } else {
        print("Niveau de batterie invalide")
    }
}
