//
//  GestionPanierAchat.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-12.
//
func gestionPanierAchat() {
    let produits = [
        (nom: "Clavier", prix: 79.99, stock: 4),
        (nom: "Souris", prix: 39.99, stock: 0),
        (nom: "Écran", prix: 249.99, stock: 2),
        (nom: "Webcam", prix: 89.99, stock: 5),
        (nom: "Casque", prix: 129.99, stock: 1)
    ]
    
    let panier = [
        "Clavier": 1,
        "Souris": 1,
        "Webcam": 2,
        "Casque": 3
    ]
    
    func trouverPrix(du produit: String, dans produits: [(nom: String, prix: Double, stock: Int)]) -> Double? {
        for item in produits {
            if item.nom == produit {
                return item.prix
            }
        }
        return nil
    }
    
    func trouverStock(du produit: String, dans produits: [(nom: String, prix: Double, stock: Int)]) -> Int? {
        for item in produits {
            if item.nom == produit {
                return item.stock
            }
        }
        return nil
    }
    
    
}
