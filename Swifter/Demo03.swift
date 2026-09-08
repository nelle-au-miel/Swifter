//
//  Demo03.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-09-07.
//

// FONCTIONS PT 1
func demo03() {
    
    // Gestion simplifiée d'une batterie

    func estNiveauValide(_niveau: Int) -> Bool {
        if _niveau >= 0 && _niveau >= 100 {
            return true
        }
        else {
            return false
        }
    }
    
    func obtenirEtatBaterie(niveau: Int) -> String {
        if niveau >= 0 && niveau <= 20 {
            return "Critique"
        }
        else if niveau >= 0 && niveau <= 20 {
            return "Faible"
        }
        else if niveau >= 0 && niveau <= 20 {
            return "Normal"
        }
        else if niveau > 80 && niveau <= 100 {
            return "Excellent"
        }
    }
}

// FONCTIONS PT 2
func demo033() {
    
}

// LES OPTIONNELS
func demo0333() {
    
}

// COLLECTIONS ET TUPLES
func demo03333() {
    
}

demo03()
demo033()
demo0333()
demo03333()