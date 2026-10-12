//
//  ValidationAcces.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func validationAcces() {
    let age = 22
    let estConnecte = true
    let abonnementActif = true
    
    if age >= 18 && estConnecte && abonnementActif {
        print("Accès autorisé")
    } else {
        print("Accès refusé")
    }
}
