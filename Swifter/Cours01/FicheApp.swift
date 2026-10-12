//
//  FicheApp.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func ficheApp() {
    let nomApp = "SanrioCatalog"
    let version = "6.0.2f"
    let nbUsers = 250
    let prix = 76.99
    let nomDev = "Jayndipity"
    
    let anneeCreation = 2000
    let anneeActuelle = 2026
    let anneeSortie = anneeActuelle - anneeCreation
    
    print("\(nomApp) est une application créer par \(nomDev). Pour fêter ses \(anneeSortie) ans, sa dernière version (\(version)) est en solde pour le prix de \(prix) $. Puis, l'app compte présentement \(nbUsers) utilisateurs !")
}
