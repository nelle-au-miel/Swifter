//
//  DetailCoursView.swift
//  ListForEachSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct DetailCoursView: View {
    let cours: Cours

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "book.closed.fill")
                .font(.system(size: 60))

            Text(cours.code)
                .font(.title)
                .bold()

            Text(cours.titre)
                .font(.title2)
                .multilineTextAlignment(.center)

            Text("\(cours.heures) heures")
                .foregroundStyle(.secondary)
        }
        .padding()
        .navigationTitle("Détail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailCoursView(
        cours: Cours(code: "420-249-AH", titre: "Programmation mobile iOS", heures: 45, disponible: true)
    )
}
