//
//  PickerSegmenteView.swift
//  ControlesSelectionSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct PickerSegmenteView: View {

    @State private var priorite: PrioriteTicket = .moyenne

    var body: some View {
        VStack(spacing: 24) {
            Text("Priorité sélectionnée")
                .font(.headline)

            Picker("Priorité", selection: $priorite) {
                ForEach(PrioriteTicket.allCases) { valeur in
                    Text(valeur.titre)
                        .tag(valeur)
                }
            }
            .pickerStyle(.segmented)

            Text(priorite.titre)
                .font(.title2)
            

            Spacer()
        }
        .padding()
        .navigationTitle("Picker segmenté")
    }
}

#Preview {
    NavigationStack {
        PickerSegmenteView()
    }
}
