//
//  StatutTicket.swift
//  ControlesSelectionSwiftUI
//
//  Khalil Loghlam
//

import Foundation

enum StatutTicket: String, CaseIterable, Identifiable {
    case nouveau, enCours, resolu, ferme

    var id: String { rawValue }

    var titre: String {
        switch self {
        case .nouveau: return "Nouveau"
        case .enCours: return "En cours"
        case .resolu: return "Résolu"
        case .ferme: return "Fermé"
        }
    }
}
