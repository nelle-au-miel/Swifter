//
//  SimTelechargement.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func simTelechargement() {
    
    for telechargement in 1...10 {
        let pourcentage = telechargement * 10
        print("Téléchargement : \(pourcentage) %")
        
        if pourcentage == 50 {
            print("La moitié du téléchargement est terminé.")
        }
        if pourcentage == 100 {
            print("Téléchargement terminé.")
        }
    }
}
