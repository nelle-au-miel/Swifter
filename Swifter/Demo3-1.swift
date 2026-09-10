//
//  Demo3-1.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-09-07.
//

// FONCTIONS PT 1

func demo3_1() {
    
    // Gestion simplifiée d'une batterie
    
    func estNiveauValide(_ niveau: Int) -> Bool {
        
        if niveau >= 0 && niveau >= 100 {
            return true
        }
        else {
            return false
        }
    }
    
    func obtenirEtatBaterie(niveau: Int) -> String {
        var text = ""
        
        if niveau >= 0 && niveau <= 20 {
            text = "Critique"
        }
        else if niveau >= 0 && niveau <= 20 {
            text = "Faible"
        }
        else if niveau >= 0 && niveau <= 20 {
            text = "Normal"
        }
        else if niveau > 80 && niveau <= 100 {
            text = "Excellent"
        }
        return text
    }
    
    func afficherBatterie(niveau: Int, appareil: String = "iPhone") {
        let niveau = estNiveauValide(72)
        let etat = obtenirEtatBaterie(niveau: 72)
        
        if niveau == true {
            print("Appareil : \(appareil)")
            print("Batterie : \(niveau)%")
            print("État : \(etat)")
        }
        else {
            print("Erreur : niveau de batterie invalide.")
        }
    }

    // Calcul d'un téléchargement
    
    func calculerPourcentage(telecharge: Double, total: Double) -> Double {
        return telecharge / total
    }
    
    func afficherProgression(pourcentage: Double) {
        print("Téléchargement : \(pourcentage)%")
    }
}
