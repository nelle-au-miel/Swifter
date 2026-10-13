//
//  ValidationCourriel.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
extension String {
    var estCourrielValide: Bool {
        return self.contains("@") && self.contains(".")
    }
}

func validationCourriel() {
    let courriel = "test@test.com"
    print(courriel.estCourrielValide)
}
