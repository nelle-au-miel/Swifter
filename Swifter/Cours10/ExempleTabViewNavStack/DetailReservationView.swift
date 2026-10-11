//
//  DetailReservationView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct DetailReservationView: View {

    let reservation: Reservation

    @Environment(\.dismiss)
    private var dismiss

    var body: some View {
        VStack(spacing: 20) {

            Image(systemName: "ticket.fill")
                .font(.system(size: 70))

            Text(reservation.destination)
                .font(.largeTitle)
                .bold()

            Text(reservation.date)
                .font(.headline)

            Text(
                reservation.prix,
                format: .currency(code: "CAD")
            )
            .font(.title2)

            Button("Retour") {
                dismiss()
            }
            .buttonStyle(.bordered)
        }
        .padding()
        .navigationTitle("Détails")
        .navigationBarTitleDisplayMode(.inline)
    }
}
