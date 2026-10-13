//
//  ExtensionBatterie.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
struct Batterie {
    var niveau: Int
}

extension Batterie {
    var estFaible: Bool { return niveau <= 20 }

    func afficherEtat() {
        print("Batterie : \(niveau) %")
    }
}

func extensionBaterie() {
    let batterie = Batterie(niveau: 65)
    batterie.afficherEtat()
}
