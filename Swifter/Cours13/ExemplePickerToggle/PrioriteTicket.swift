//
//  PrioriteTicket.swift
//  ControlesSelectionSwiftUI
//
//  Khalil Loghlam
//

import Foundation

enum PrioriteTicket: String, CaseIterable, Identifiable {
    case basse, moyenne, haute, critique

    var id: String { rawValue }

    var titre: String {
        switch self {
        case .basse: return "Basse"
        case .moyenne: return "Moyenne"
        case .haute: return "Haute"
        case .critique: return "Critique"
        }
    }
}
