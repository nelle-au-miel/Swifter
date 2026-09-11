//
//  Demo3-2.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-09-07.
//

// FONCTIONS PT 2

func demo3_2() {
    
    // Validation d'une connexion mobile

    func verifierConnexion(utilisateur: String, motDePasse: String) -> (succes: Bool, message: String) {
        
        if utilisateur == "" {
            return (false, "Nom d'utilisateur requis")
        }
        else if motDePasse == "" {
            return (false, "Mot de passe requis")
        }
        else if utilisateur == "admin" && motDePasse == "1234" {
            return (true, "Connexion réussie")
        }
        else {
            return (false, "Identifianta incorrects")
        }
    }
    print(verifierConnexion(utilisateur: "Jaynelle", motDePasse: ""))
    
    
    // Opérations sur le niveau de batterie

    func augmenter(_ niveau: Int) -> Int {
        return niveau + 1
    }
    
    func diminuer(_ niveau: Int) -> Int {
        return niveau - 1
    }
    
    func modifierBatterie(niveau: Int, operation: (Int) -> Int) -> Int {
        var res = 0
        
        if niveau > 0 || niveau < 100 {
            res = operation(niveau)
        }
        return res
    }
    print(modifierBatterie(niveau: 10, operation: augmenter))
    
    
    // Fonction de traitement

    func afficherConnexion(_ message: String) {
        print(message)
    }
    
    func afficherErreur(_ message: String) {
        print("Erreur : le message n'a pas pu être traité.")
    }
    
    func traiterMessage(message: String, action: (String) -> Void) {
        action(message)
    }
    print(traiterMessage(message: "Les marmottes sortent au printemps !", action: afficherErreur))
    
    
    // Choisir une opération
    
    func choisirOperation(type: String) -> (Double, Double) -> Double {

        if type == "addition" {
            return { a, b in
                a + b
            }
        }
        else if type == "soustraction" {
            return { a, b in
                a - b
            }
        }
        else {
            return { a, b in
                a * b
            }
        }
    }
    let operation = choisirOperation(type: "multiplication")
    let resultat = operation(5, 4)
    print(resultat)
}
