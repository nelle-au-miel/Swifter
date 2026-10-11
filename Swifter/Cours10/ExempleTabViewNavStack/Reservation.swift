//
//  Reservation.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import Foundation

struct Reservation: Identifiable, Hashable {
    let id = UUID()
    let destination: String
    let date: String
    let prix: Double
}
