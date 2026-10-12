//
//  ValidConnMobile.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func validConnMobile() {
    
    func verifierConnexion(utilisateur: String, motDePasse: String) -> (succes: Bool, message: String) {
        if utilisateur == "admin" && motDePasse == "1234" {
            return (true, "Connexion réussie")
        }
        else if utilisateur == "" {
            return (false, "Nom d'utilisateur requis")
        }
        else if motDePasse == "" {
            return (false, "Mot de passe requis")
        }
        else {
            return (false, "Identifiants incorrects")
        }
    }
    print(verifierConnexion(utilisateur: "admin", motDePasse: "1234"))
}
