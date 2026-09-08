//
//  Demo02.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-09-07.
//

// OPÉRATEURS ET STRUCTURES CONDITIONNELLES
// DEUXIÈME DÉMO EN BAS ↓ ↓ ↓
func demo02() {
    
    // Évaluation d'une note

    let note = 78

    if note >= 90 {
        print("Excellent")
    } else if note >= 80 {
        print("Très bien")
    } else if note >= 70 {
        print("Bien")
    } else if note >= 60 {
        print("Réussite")
    } else {
        print("Échec")
    }

    // Validation d'un accès

    let age = 22
    let estConnecte = true
    let abonnementActif = true

    if age >= 18, estConnecte, abonnementActif {
        print("Accès autorisé")
    } else {
        print("Accès refusé")
    }

    // Nombre pair ou impair

    let nombre = 17

    if nombre % 2 == 0 {
        print("\(nombre) est pair")
    } else {
        print("\(nombre) est impair")
    }

    // Mini système de connexion

    let nomUtilisateur = "admin"
    let motDePasse = "1234"

    if nomUtilisateur == "admin", motDePasse == "1234" {
        print("Connexion réussie")
    } else {
        print("Nom d'utilisateur ou mot de passe incorrect")
    }
}

// LES BOUCLES
func demo022() {
    
    // Simulation d'un téléchargement

    let telechargement = 0

    for telechargement in stride(from: telechargement, through: 100, by: 10) {
        print("Téléchargement : \(telechargement) %")

        if telechargement == 50 {
            print("La moitié du téléchargement est terminée.")
        }
        if telechargement == 100 {
            print("Téléchargement terminé.")
        }
    }

    // Tentatives de connexion

    let maximumTentatives = 4
    let connexionReussie = true

    for maximumTentatives in stride(from: maximumTentatives, to: 0, by: -1) {
        if maximumTentatives == 3 {
            print("Connexion réussie !")
            break
        } else {
            print("Tentative de connexion : \(maximumTentatives)")
        }
    }

    // Compte à rebours

    for nombre in stride(from: 10, through: 1, by: -1) {
        print(nombre)
    }

    print("Application prête !")}
}

demo02()
demo022()