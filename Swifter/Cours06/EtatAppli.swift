//
//  EtatAppli.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func etatAppli() {
    enum EtatApp {
        case demarrage
        case active
        case arrierePlan
        case fermee
    }
    
    var etatApp = EtatApp.fermee
    
    switch etatApp {
    case .demarrage: print("Démarrage de l'application.")
    case .active: print("Application active.")
    case .arrierePlan: print("Application ouvert en arrière plan.")
    case .fermee: print("Fermeture de l'application.")
    }
    
    etatApp
}
