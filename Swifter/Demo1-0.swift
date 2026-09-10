//
//  Demo1-0.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-09-07.
//

// VARIABLES, CONTANTES ET TYPES

func demo1_0() {
    
    // Créer une fiche d'application

    // 1.
    let nomApp = "Choco Minette"
    let version = "6.0.3f"
    let utilisateurs = 250
    let prix = 169.99
    let developpeur = "Minette"

    print("\(nomApp) est une application développée par \(developpeur).")
    print("Elle est à \(prix) $ et la dernière version est \(version).")
    print("N'hésitez pas à vous la proccurer puisqu'elle à l'aire de satisfaire leur \(utilisateurs) clients !")

    // 2.
    let prenom = "Jaynelle"
    let anneeNaissance = 2002
    let anneeActuelle = 2026

    let age = anneeActuelle - anneeNaissance

    print("Je suis \(prenom) et j'ai \(age) ans.")
}
