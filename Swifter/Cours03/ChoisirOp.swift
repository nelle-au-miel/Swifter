//
//  ChoisirOp.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func choisirOp() {
    
    func addition(_ a: Double, b: Double) -> Double {
        return a + b
    }
    func soustraction(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
    func multiplication(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
    
    func choisirOperation(type: String) -> (Double, Double) -> Double {
        switch(type) {
        case "addition": return addition
        case "soustraction": return soustraction
        case "multiplication": return multiplication
        default: return addition
        }
    }
    
    let operation = choisirOperation(type: "multiplication")
    print(operation(10, 6))
}
