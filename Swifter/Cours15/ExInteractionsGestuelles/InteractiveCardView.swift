//
//  InteractiveCardView.swift
//  InteractionsGestuellesSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct InteractiveCardView: View {

    @State private var favori = false
    @State private var afficherMessage = false

    @State private var position = CGSize.zero
    @GestureState private var deplacement = CGSize.zero

    @State private var echelle = 1.0
    @State private var angle = Angle.zero

    var body: some View {

        VStack(spacing: 24) {

            Text("Carte interactive")
                .font(.largeTitle)
                .bold()

            carte
                .offset(
                    x: position.width + deplacement.width,
                    y: position.height + deplacement.height
                )
                .scaleEffect(echelle)
                .rotationEffect(angle)
                .gesture(
                    gesteDeplacement
                        .simultaneously(with: gesteZoom)
                        .simultaneously(with: gesteRotation)
                )

            Text("Touchez le coeur, maintenez la carte, puis essayez le déplacement, le zoom et la rotation.")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Button("Réinitialiser") {
                withAnimation {
                    position = .zero
                    echelle = 1.0
                    angle = .zero
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .alert(
            "Appui prolongé détecté",
            isPresented: $afficherMessage
        ) {
            Button("OK") {
            }
        }
    }

    private var carte: some View {

        VStack(spacing: 16) {

            HStack {

                Image(systemName: "hand.tap")
                    .font(.title2)

                Text("Photo du jour")
                    .font(.headline)

                Spacer()

                Image(
                    systemName: favori
                        ? "heart.fill"
                        : "heart"
                )
                .font(.title2)
                .foregroundStyle(
                    favori ? .red : .primary
                )
                .contentShape(Rectangle())
                .onTapGesture {
                    withAnimation {
                        favori.toggle()
                    }
                }
            }

            Image(systemName: "photo.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .foregroundStyle(.blue)
                .onTapGesture(count: 2) {
                    withAnimation {
                        echelle = echelle == 1.0 ? 1.5 : 1.0
                    }
                }

            Text("Glissez, pincez ou faites pivoter la carte.")
                .foregroundStyle(.secondary)
        }
        .padding()
        .frame(maxWidth: 340)
        .background(.gray.opacity(0.12))
        .clipShape(
            RoundedRectangle(cornerRadius: 20)
        )
        .contentShape(
            RoundedRectangle(cornerRadius: 20)
        )
        .onLongPressGesture(
            minimumDuration: 0.8
        ) {
            afficherMessage = true
        }
    }

    private var gesteDeplacement: some Gesture {

        DragGesture()
            .updating($deplacement) { value, state, _ in
                state = value.translation
            }
            .onEnded { value in
                position.width += value.translation.width
                position.height += value.translation.height
            }
    }

    private var gesteZoom: some Gesture {

        MagnifyGesture()
            .onChanged { value in
                echelle = min(
                    max(value.magnification, 0.6),
                    2.5
                )
            }
    }

    private var gesteRotation: some Gesture {

        RotateGesture()
            .onChanged { value in
                angle = value.rotation
            }
    }
}

#Preview {
    InteractiveCardView()
}
