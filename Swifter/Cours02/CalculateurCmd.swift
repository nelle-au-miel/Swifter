//
//  CalculateurCmd.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func calculateurCmd() {
    let nomClient = "Jaynelle"
    let prixUnite = 25.00
    let quantite  = 4
    let estMembre = true
    let codePromo = "SWIFT10"
    
    if quantite <= 0 {
        print("Erreur : quantité invalide")
    }
    else {
        var sousTotal = prixUnite * Double(quantite)
        
        var rabaisQte = 0.0
        if quantite >= 10 {
            rabaisQte = sousTotal * 0.10
        } else if quantite >= 5 {
            rabaisQte = sousTotal * 0.05
        }
        
        var rabaisMembre = 0.0
        if estMembre {
            rabaisMembre = sousTotal * 0.05
        }
        
        var rabaisPromo = 10.0
        if codePromo == "SWIFT10" {
            rabaisPromo = 10
        }
        
        let total = sousTotal - rabaisQte - rabaisMembre - rabaisPromo
        
        var typeCmd = ""
        if total >= 100 {
            typeCmd = "Grande commande"
        } else if total >= 50 {
            typeCmd = "Commande moyenne"
        } else {
            typeCmd = "Petite commande"
        }
        
        print("------ COMMANDE ------")
        print("Client : \(nomClient)")
        print("Prix unitaire : \(prixUnite) $")
        print("Quantité : \(quantite)")
        print("Sous-total : \(sousTotal) $")
        print("Réduction quantité : \(rabaisQte) $")
        print("Réduction membre : \(rabaisMembre) $")
        print("Promotion : \(rabaisPromo) $")
        print("Total final : \(total) $")
        print("Type de commande : \(typeCmd)")
        print("----------------------")
    }
}
