//
//  ReservationView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct ReservationsView: View {

    let reservations = [
        Reservation(
            destination: "Québec",
            date: "12 octobre 2026",
            prix: 180
        ),
        Reservation(
            destination: "Toronto",
            date: "2 novembre 2026",
            prix: 320
        ),
        Reservation(
            destination: "Vancouver",
            date: "18 décembre 2026",
            prix: 680
        )
    ]

    var body: some View {
        List(reservations) { reservation in

            NavigationLink(value: reservation) {
                VStack(alignment: .leading, spacing: 6) {

                    Text(reservation.destination)
                        .font(.headline)

                    Text(reservation.date)
                        .foregroundStyle(.secondary)

                    Text(
                        reservation.prix,
                        format: .currency(code: "CAD")
                    )
                    .font(.subheadline)
                }
            }
        }
        .navigationTitle("Réservations")
        .navigationDestination(
            for: Reservation.self
        ) { reservation in
            DetailReservationView(
                reservation: reservation
            )
        }
    }
}

#Preview {
    NavigationStack {
        ReservationsView()
    }
}
