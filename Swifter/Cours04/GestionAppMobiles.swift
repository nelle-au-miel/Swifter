//
//  GestionAppMobiles.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func gestionAppMobiles() {
    
    class AppareilMobile {
        let nom: String
        var batterie: Int
        var stockageDispo: Double
        var estConnecte: Bool
        
        init(nom: String, batterie: Int, stockageDispo: Double) {
            self.nom = nom
            self.batterie = batterie
            self.stockageDispo = stockageDispo
            self.estConnecte = false
        }
        
        func connecter() {
            estConnecte = true
            print("\(nom) connecté.")
        }
        
        func deconnecter() {
            estConnecte = false
           print("\(nom) déconnecté.")
        }
        
        func utiliserBatterie(_ quantite: Int) {
            batterie -= quantite

            if batterie < 0 {
                batterie = 0
            }
            else if batterie > 100 {
                batterie = 100
            }
        }
        
        func installerApplication(nom: String, taille: Double) {
            if stockageDispo > taille {
                print("Application installée : \(nom).")
                stockageDispo -= taille
            }
            else {
                print("Espace de stockage insuffisant.")
            }
        }
        
        func afficherEtat() {
            print("------ APPAREIL ------")
            print("Nom : \(nom)")
            print("Batterie : \(batterie) %")
            print("Stockage disponible : \(stockageDispo) Go")
            print("Connecté : \(estConnecte)")
        }
    }
    
    let appareils: [AppareilMobile] = [
        AppareilMobile(nom: "Mac", batterie: 48, stockageDispo: 187),
        AppareilMobile(nom: "iPhone", batterie: 100, stockageDispo: 32),
        AppareilMobile(nom: "iPad", batterie: 2, stockageDispo: 256)
    ]
    
    for app in appareils {
        app.afficherEtat()
    }
    
    for app in appareils {
        if app.batterie <= 20 || app.stockageDispo < 10 {
            print("----------------------")
            print("Attention requise : \(app.nom)")
            print("Batterie : \(app.batterie) %")
        }
    }
}
