//
//  Contact.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import Foundation

struct Contact: Identifiable, Hashable {
    let id: UUID
    var nom: String
    var courriel: String
    var telephone: String
    var notes: String

    init(
        id: UUID = UUID(),
        nom: String,
        courriel: String,
        telephone: String,
        notes: String
    ) {
        self.id = id
        self.nom = nom
        self.courriel = courriel
        self.telephone = telephone
        self.notes = notes
    }
}
