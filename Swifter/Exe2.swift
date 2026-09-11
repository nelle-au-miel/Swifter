//
//  Exe2.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-09-07.
//

// EXERCICE 2 : SIMULATION D'UNE APPLICATION EN MODE TÉLÉCHAREMENT

func exe2() {
    
    // I. Données ----------------------------------------------------------

    let application: String = "MobileUpdate"
    var progression: Int = 0
    var batterie: Int = 80
    var telechargementAnnule: Bool = false
    var wifiActif: Bool = true
    let modeEconomieEnergie: Bool = false

    // II. Questions ----------------------------------------------------------

    print("Application : \(application)")

    // Partie 2 - Vérification avant le téléchargement
    if wifiActif && batterie >= 20 && !telechargementAnnule {
        
        print("Téléchargement démarré...")

        // Partie 3 - Progression du téléchargement
        while progression <= 100 {

            // Partie 8 — Utilisation de continue
            if progression == 40 {
                print("Vérification des données...")
                progression += 10
                continue
            }

            print("Téléchargement : \(progression) %")
            // Défi supplémentaire
            if modeEconomieEnergie {
                batterie -= 2
            }
            else {
                batterie -= 5
            }
            print("Batterie : \(batterie) %")

            // Partie 4 - Messages selon la progression
            if progression == 50 {
                print("La moitié du téléchargement est terminée.")
            }
            if progression == 80 {
                print("Téléchargement presque terminé.")
            }
            if progression == 100 {
                print("Téléchargement terminé avec succès.")
            }

            // Partie 5 - Surveillance de la batterie
            if batterie <= 10 {
                telechargementAnnule = true
                print("Téléchargement interrompu : batterie critique.")
                break
            }
            else if batterie <= 20 {
                print("Attention : batterie faible.")
            }

            // Partie 6 - Perte de connexion simulée
            if progression == 60 {
                wifiActif = false
                print("Connexion Wi-Fi perdue.")
                telechargementAnnule = true
                break
            }
            progression += 10
        }
    } else {

        if !wifiActif {
            print("Connexion Wi-Fi requise.")
        }

        if batterie < 20 {
            print("Batterie insuffisante")
        }

        if telechargementAnnule == true {
            print("Téléchargement annulé")
        }
    }

    print("---------- RÉSUMÉ ----------")
    print("Application : \(application)")
    print("Progression finale : \(progression) %")
    print("Batterie restante : \(batterie) %")
    print("Wi-Fi actif : \(wifiActif)")
    print("Téléchargement terminé : \(!telechargementAnnule)")
    print("----------------------------")

    // Partie 7 — Nouvelle simulation
    batterie = 35
    wifiActif = false
    telechargementAnnule = true

    if !wifiActif {
        print("Connexion Wi-Fi requise.")
    }
}
