//
//  LifecycleDetailView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct LifecycleDetailView: View {
    @State private var message = "L'écran de détail est affiché."

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "iphone")
                .font(.system(size: 60))

            Text("Écran de détail")
                .font(.title)
                .bold()

            Text(message)
                .multilineTextAlignment(.center)

            Text("""
            Revenez à l'écran précédent pour observer
            onAppear et onDisappear dans la console.
            """)
            .foregroundStyle(.secondary)
            .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("Détail")
        .onAppear {
            message = "LifecycleDetailView : onAppear"
            print(message)
        }
        .onDisappear {
            message = "LifecycleDetailView : onDisappear"
            print(message)
        }
    }
}

#Preview {
    NavigationStack {
        LifecycleDetailView()
    }
}
