//
//  Demo6-2.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-09-11.
//

// ÉNUMERATIONS

func demo6_2() {
    
    // État d'une application
    
    enum EtatApplication {
        case demarrage
        case active
        case arrierePlan
        case fermee
    }
    
    var etatApplication: EtatApplication = .active
    etatApplication = .fermee
    
    switch etatApplication {
    case .demarrage:
        print("Démarrage de l'application...")
    case .active:
        print("L'application est active.")
    case .arrierePlan:
        print("L'application fonctionne en arrière-plan.")
    case .fermee:
        print("L'application est fermée.")
    }
    
    // Résultat de connexion
    
    enum ResultatConnexion {
        case succes(String), erreur(String)
    }
    
    var resultatConnexion = ResultatConnexion.succes("La connexion a été réussie !")
    resultatConnexion = .erreur("Erreur : la connexion a échouée")
    print(resultatConnexion)
}
