//
//  DemoControlesView.swift
//  ControlesSelectionSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct DemoControlesView: View {

    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Formulaire de ticket") {
                    NouveauTicketView()
                }

                NavigationLink("Picker segmenté") {
                    PickerSegmenteView()
                }
            }
            .navigationTitle("Contrôles de sélection")
        }
    }
}

#Preview {
    DemoControlesView()
}
