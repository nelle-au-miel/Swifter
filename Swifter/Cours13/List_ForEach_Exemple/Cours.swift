//
//  Cours.swift
//  ListForEachSwiftUI
//
//  Khalil Loghlam
//

import Foundation

struct Cours: Identifiable, Hashable {
    let id = UUID()
    let code: String
    let titre: String
    let heures: Int
    let disponible: Bool
}
