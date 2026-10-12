//
//  OpNivBatterie.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func opNivBatterie() {
    
    func augmenter(_ niveau: Int) -> Int {
        return niveau + 1
    }
    
    func diminuer(_ niveau: Int) -> Int {
        return niveau - 1
    }
    
    func modifierBatterie(niveau: Int, operation: (Int) -> Int) -> Int {
        if niveau < 100 && niveau > 0 {
            return operation(niveau)
        }
        else {
            return 0
        }
    }
    
    print(modifierBatterie(niveau: 39, operation: augmenter))
}
