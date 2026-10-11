//
//  CatalogueViewModel.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import Foundation
import Observation

@Observable
final class CatalogueViewModel {
    var recherche = ""
    var afficherDisponiblesSeulement = false

    var produits: [Produit] = [
        Produit(nom: "iPhone", prix: 1199, categorie: "Téléphone", disponible: true),
        Produit(nom: "MacBook Air", prix: 1499, categorie: "Ordinateur", disponible: true),
        Produit(nom: "AirPods", prix: 249, categorie: "Audio", disponible: false),
        Produit(nom: "Apple Watch", prix: 549, categorie: "Montre", disponible: true)
    ]

    var produitsFiltres: [Produit] {
        produits.filter { produit in
            let correspondRecherche =
                recherche.isEmpty ||
                produit.nom.localizedCaseInsensitiveContains(recherche)

            let correspondDisponibilite =
                !afficherDisponiblesSeulement || produit.disponible

            return correspondRecherche && correspondDisponibilite
        }
    }

    func reinitialiserFiltres() {
        recherche = ""
        afficherDisponiblesSeulement = false
    }
}
