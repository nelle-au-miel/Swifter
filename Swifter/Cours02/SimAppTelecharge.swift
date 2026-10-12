//
//  SimAppTelechargement.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func simAppTelecharg() {
    let nomApp = "SanXCatalog"
    var progression = 0
    var batterie = 80
    var connexionWifi = true
    var telechargementAnnule = false
    
    var wifiActif = true
    var modeEconomie = false
    
    if !connexionWifi {
        print("Connexion Wi-Fi requise.")
    }
    if batterie < 20 {
        print("Batterie insuffisante.")
    }
    if telechargementAnnule {
        print("Téléchargement annulé.")
    }
    else {
        for progression in stride(from: 0, through: 100, by: 10) {
            
            if progression == 40 {
                print("Vérification des données...")
                continue
            }
            print("Téléchargement : \(progression) %")
            print("Batterie : \(batterie) %")
            if modeEconomie {
                batterie -= 2
            } else {
                batterie -= 5
            }
            
            if progression == 50 {
                print("La moitié du téléchargement est terminé.")
            }
            if progression == 80 {
                print("Téléchargement presque terminé.")
            }
            if progression == 100 {
                print("Téléchargement terminé avec succès.")
            }
            
            if batterie <= 20 {
                print("Attention : batterie faible.")
            }
            if batterie <= 10 {
                telechargementAnnule = true
                print("Téléchargement interrompu : batterie critique.")
                break
            }
            
//            if progression == 60 {
//                wifiActif = false
//                print("Connexion Wi-Wi perdue.")
//                break
//            }
        }
        print("------ RÉSUMÉ ------")
        print("Application : \(nomApp)")
        print("Progression finale : \(progression) %")
        print("Batterie restante : \(batterie) %")
        print("Wifi actif : \(wifiActif)")
        print("Téléchargement terminé : \(!telechargementAnnule)")
    }
}
