//
//  CoursView.swift
//  ListForEachSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct CoursView: View {

    @State private var cours: [Cours] = [
        Cours(code: "420-249-AH", titre: "Programmation mobile iOS", heures: 45, disponible: true),
        Cours(code: "420-311-AH", titre: "Programmation embarquée", heures: 60, disponible: true),
        Cours(code: "420-326-AH", titre: "Technologies connexes multiplateformes", heures: 90, disponible: false),
        Cours(code: "420-717-AH", titre: "Techniques de programmation", heures: 60, disponible: true)
    ]

    var body: some View {
        NavigationStack {
            List {
                Section("Tous les cours") {
                    ForEach(cours) { cours in
                        NavigationLink(value: cours) {
                            CoursRowView(cours: cours)
                        }
                    }
                    .onDelete { indexSet in
                        cours.remove(atOffsets: indexSet)
                    }
                    .onMove { source, destination in
                        cours.move(fromOffsets: source, toOffset: destination)
                    }
                }
            }
            .navigationTitle("Cours")
            .toolbar {
                EditButton()
            }
            .navigationDestination(for: Cours.self) { cours in
                DetailCoursView(cours: cours)
            }
        }
    }
}

#Preview {
    CoursView()
}
