//
//  CoursRowView.swift
//  ListForEachSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct CoursRowView: View {
    let cours: Cours

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "book.closed")
                .font(.title2)

            VStack(alignment: .leading, spacing: 4) {
                Text(cours.code)
                    .font(.headline)

                Text(cours.titre)
                    .foregroundStyle(.secondary)

                Text("\(cours.heures) heures")
                    .font(.caption)
            }

            Spacer()

            if cours.disponible {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundStyle(.green)
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    CoursRowView(
        cours: Cours(code: "420-249-AH", titre: "Programmation mobile iOS", heures: 45, disponible: true)
    )
}
