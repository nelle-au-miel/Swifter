//
//  GesturesOverviewView.swift
//  InteractionsGestuellesSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct GesturesOverviewView: View {

    @State private var couleurChangee = false
    @State private var doubleTap = false
    @State private var afficherMessage = false
    @State private var position = CGSize.zero

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(spacing: 25) {

                    // Toucher
                    VStack(spacing: 10) {

                        Text("Toucher")
                            .font(.headline)

                        RoundedRectangle(cornerRadius: 15)
                            .fill(
                                couleurChangee
                                ? .blue
                                : .gray
                            )
                            .frame(height: 80)
                            .overlay(
                                Text("Cliquer ici")
                                    .foregroundStyle(.white)
                            )
                            .onTapGesture {
                                couleurChangee.toggle()
                            }
                    }

                    // Double toucher
                    VStack(spacing: 10) {

                        Text("Double toucher")
                            .font(.headline)

                        Image(systemName: "heart.fill")
                            .font(.system(size: 60))
                            .scaleEffect(
                                doubleTap ? 1.5 : 1
                            )
                            .onTapGesture(count: 2) {
                                withAnimation {
                                    doubleTap.toggle()
                                }
                            }
                    }

                    // Appui prolongé
                    VStack(spacing: 10) {

                        Text("Appui prolongé")
                            .font(.headline)

                        Text("Maintenir ici")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.orange.opacity(0.3))
                            .clipShape(
                                RoundedRectangle(
                                    cornerRadius: 15
                                )
                            )
                            .onLongPressGesture(
                                minimumDuration: 1
                            ) {
                                afficherMessage = true
                            }
                    }

                    // Déplacement
                    VStack(spacing: 10) {

                        Text("Déplacement")
                            .font(.headline)

                        Image(systemName: "square.fill")
                            .font(.system(size: 60))
                            .offset(position)
                            .gesture(
                                DragGesture()
                                    .onChanged { value in
                                        position =
                                            value.translation
                                    }
                            )
                    }

                    NavigationLink(
                        "Exemple combiné"
                    ) {
                        InteractiveCardView()
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
            }
            .navigationTitle("Gestes SwiftUI")
            .alert(
                "Appui prolongé détecté",
                isPresented: $afficherMessage
            ) {
                Button("OK") {
                }
            }
        }
    }
}
#Preview {
    GesturesOverviewView()
}
