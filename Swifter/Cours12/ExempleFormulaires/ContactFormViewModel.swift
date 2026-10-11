//
//  ContactFormViewModel.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import Foundation
import Observation

@Observable
final class ContactFormViewModel {
    var nom = ""
    var courriel = ""
    var telephone = ""
    var motDePasse = ""
    var notes = ""

    func creerContact() -> Contact {
        Contact(
            nom: nom,
            courriel: courriel,
            telephone: telephone,
            notes: notes
        )
    }
}
