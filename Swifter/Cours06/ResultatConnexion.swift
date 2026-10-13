//
//  ResultatConnexion.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func resultatConnexion() {
    
    enum ResConnexion {
        case succes(String)
        case erreur(String)
    }
    
    var nom = ResConnexion.succes("Jaynelle")
    var mdp = ResConnexion.erreur("Mot de passe incorrect")
    
    switch nom {
    case .succes: print("Connexion réussie !")
    case .erreur: print("Connexion impossible.")
    }
}
