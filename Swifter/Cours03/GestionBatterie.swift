//
//  GestionBatterie.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func gestionBatterie() {
    
    func estNiveauValide(_ niveau: Int) -> Bool {
        return niveau > 0 && niveau < 100
    }
    
    func obtenirEtatBatterie(niveau: Int) -> String {
        if niveau > 80 {
            return "Excellent"
        }
        else if niveau > 50 {
            return "Normal"
        }
        else if niveau > 20 {
            return "Faible"
        }
        else {
            return "Critique"
        }
    }
    
    func afficherBatterie(niveau: Int, appareil: String = "iPhone") {
        if estNiveauValide(niveau) == true {
            print("Appareil : \(appareil)")
            print("Batterie : \(niveau) %")
            print("État : \(obtenirEtatBatterie(niveau: niveau))")
        }
        else {
            print("Erreur : niveau de batterie invalide")
        }
    }
    
    print(afficherBatterie(niveau: 75))
}
