//
//  CategorieTicket.swift
//  ControlesSelectionSwiftUI
//
//  Khalil Loghlam
//

import Foundation

enum CategorieTicket: String, CaseIterable, Identifiable {
    case materiel, logiciel, reseau, compte, imprimante, autre

    var id: String { rawValue }

    var titre: String {
        switch self {
        case .materiel: return "Matériel"
        case .logiciel: return "Logiciel"
        case .reseau: return "Réseau"
        case .compte: return "Compte utilisateur"
        case .imprimante: return "Imprimante"
        case .autre: return "Autre"
        }
    }
}
