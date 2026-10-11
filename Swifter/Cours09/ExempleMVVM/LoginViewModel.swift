//
//  LoginViewModel.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import Foundation
import Observation

@Observable
final class LoginViewModel {

    var email = ""
    var motDePasse = ""
    var message = ""
    var utilisateur: Utilisateur?

    var formulaireValide: Bool {
        !email.trimmingCharacters(in: .whitespaces).isEmpty &&
        !motDePasse.isEmpty
    }

    func connecter() {
        guard formulaireValide else {
            message = "Veuillez remplir tous les champs."
            utilisateur = nil
            return
        }

        utilisateur = Utilisateur(
            nom: "Alex Martin",
            email: email
        )

        message = "Connexion réussie."
    }

    func deconnecter() {
        utilisateur = nil
        motDePasse = ""
        message = "Utilisateur déconnecté."
    }

    func reinitialiser() {
        email = ""
        motDePasse = ""
        message = ""
        utilisateur = nil
    }
}
