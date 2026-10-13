//
//  NouveauTicketView.swift
//  ControlesSelectionSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct NouveauTicketView: View {

    @State private var titre = ""
    @State private var description = ""

    @State private var categorie: CategorieTicket = .materiel
    @State private var priorite: PrioriteTicket = .moyenne
    @State private var statut: StatutTicket = .nouveau

    @State private var recevoirNotification = true
    @State private var delaiEstime = 1
    @State private var avecDateSouhaitee = false
    @State private var dateSouhaitee = Date()

    var body: some View {
        NavigationStack {
            Form {
                Section("Demande") {
                    TextField("Titre", text: $titre)

                    TextEditor(text: $description)
                        .frame(minHeight: 100)
                }

                Section("Classification") {
                    Picker("Catégorie", selection: $categorie) {
                        ForEach(CategorieTicket.allCases) { valeur in
                            Text(valeur.titre)
                                .tag(valeur)
                        }
                    }

                    Picker("Priorité", selection: $priorite) {
                        ForEach(PrioriteTicket.allCases) { valeur in
                            Text(valeur.titre)
                                .tag(valeur)
                        }
                    }

                    Picker("Statut", selection: $statut) {
                        ForEach(StatutTicket.allCases) { valeur in
                            Text(valeur.titre)
                                .tag(valeur)
                        }
                    }
                }

                Section("Options") {
                    Toggle(
                        "Recevoir une notification",
                        isOn: $recevoirNotification
                    )

                    Stepper(
                        "Délai estimé : \(delaiEstime) jour(s)",
                        value: $delaiEstime,
                        in: 1...10
                    )

                    Toggle(
                        "Ajouter une date souhaitée",
                        isOn: $avecDateSouhaitee
                    )

                    if avecDateSouhaitee {
                        DatePicker(
                            "Date souhaitée",
                            selection: $dateSouhaitee,
                            in: Date()...,
                            displayedComponents: .date
                        )
                    }
                }

                Section {
                    Button("Enregistrer") {
                        print("Titre : \(titre)")
                        print("Catégorie : \(categorie.titre)")
                        print("Priorité : \(priorite.titre)")
                        print("Statut : \(statut.titre)")
                        print("Notification : \(recevoirNotification)")
                        print("Délai : \(delaiEstime)")
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .navigationTitle("Nouveau ticket")
        }
    }
}

#Preview {
    NouveauTicketView()
}
