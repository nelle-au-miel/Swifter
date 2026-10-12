//
//  FoncTraitement.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func foncTraitement() {
    
    func afficherConnexion(_ message: String) {
        print("\(message) - Connexion réussie !")
    }
    
    func afficherErreur(_ message: String) {
        print("\(message) - Erreur : la connexion n'a pas pu être effectuée.")
    }
    
    func traiterMessage(message: String, action: (String) -> Void) {
        print(action(message))
    }
    
    traiterMessage(message: "J'ai tenté de me connecter", action: afficherConnexion)
}
