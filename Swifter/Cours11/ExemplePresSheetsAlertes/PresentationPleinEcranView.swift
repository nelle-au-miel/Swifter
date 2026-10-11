//
//  PresentationPleinEcranView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct PresentationPleinEcranView: View {

    @Environment(\.dismiss)
    private var dismiss

    var body: some View {

        ZStack {

            LinearGradient(
                colors: [
                    .blue.opacity(0.8),
                    .purple.opacity(0.8)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 24) {

                Image(systemName: "sparkles")
                    .font(.system(size: 80))

                Text("Présentation plein écran")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)

                Button("Fermer") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

#Preview {
    PresentationPleinEcranView()
}
