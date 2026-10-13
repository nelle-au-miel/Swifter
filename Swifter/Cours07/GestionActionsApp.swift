//
//  GestionActionsApp.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func gestionActionsApp() {
    let afficherBienvenue = { return "Bienvenue dans l'application" }
    let calculerPourcentage = { (valeurActuelle: Double, valeurTotale: Double) -> Double in
    return valeurActuelle * 100 / valeurTotale }
    
    var nombreActions = 0
    var incrementer = { nombreActions += 1 }
    
    print(afficherBienvenue())
    print(calculerPourcentage(50, 200))
    
    func executer(nomAction: String, action: () -> Void) {
        print("Action : \(nomAction)")
        action()
    }
    
    for i in 1...4 {
        executer(nomAction: "Synchronisation") {
            print("Synchronisation terminée")
            incrementer()
        }
    }
    print(nombreActions)
}
