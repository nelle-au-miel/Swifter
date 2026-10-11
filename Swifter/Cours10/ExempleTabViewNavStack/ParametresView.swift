//
//  ParametresView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct ParametresView: View {

    @State private var notifications = true
    @State private var modeSombre = false

    var body: some View {
        Form {
            Toggle(
                "Notifications",
                isOn: $notifications
            )

            Toggle(
                "Mode sombre",
                isOn: $modeSombre
            )
        }
        .navigationTitle("Paramètres")
    }
}
