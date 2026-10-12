//
//  ProfilUtilisateur.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func profilUtilisateur() {
    var nom: String? = "Jaynelle"
    var courriel: String? = nil
    var age: Int? = 24
    var ville: String? = "Montréal"
    
    let statut = nom ?? "Inconnu"
    print("Utilisateur : \(statut)")
    
    if let courriel {
        print("Courriel : \(courriel)")
    }
    else {
        print("Aucun courriel enregistré")
    }
    
    if let age {
        if age >= 18 {
            print("Compte adulte")
        }
        else {
            print("Compte mineur")
        }
    }
    
    let nbChar = ville?.count ?? 0
    print("Nombre de caractèeres : \(nbChar)")
}
