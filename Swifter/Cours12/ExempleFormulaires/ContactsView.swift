//
//  ContactsView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct ContactsView: View {

    @State private var contacts: [Contact] = [
        Contact(
            nom: "Alex Martin",
            courriel: "alex@example.com",
            telephone: "514-555-0101",
            notes: "Client entreprise"
        ),
        Contact(
            nom: "Sophie Tremblay",
            courriel: "sophie@example.com",
            telephone: "514-555-0102",
            notes: "Préférence : courriel"
        )
    ]

    @State private var afficherAjout = false
    @State private var contactSelectionne: Contact?

    var body: some View {

        NavigationStack {

            List {
                ForEach(contacts) { contact in

                    Button {
                        contactSelectionne = contact
                    } label: {
                        VStack(
                            alignment: .leading,
                            spacing: 4
                        ) {
                            Text(contact.nom)
                                .font(.headline)

                            Text(contact.courriel)
                                .foregroundStyle(.secondary)
                        }
                    }
                    .buttonStyle(.plain)
                }
            }
            .navigationTitle("Contacts")
            .toolbar {
                ToolbarItem(
                    placement: .topBarTrailing
                ) {
                    Button {
                        afficherAjout = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(
                isPresented: $afficherAjout
            ) {
                AjouterContactView { contact in
                    contacts.append(contact)
                }
            }
            .sheet(
                item: $contactSelectionne
            ) { contact in

                if let index = contacts.firstIndex(
                    where: { $0.id == contact.id }
                ) {
                    ModifierContactView(
                        contact: $contacts[index]
                    )
                }
            }
        }
    }
}

#Preview {
    ContactsView()
}
