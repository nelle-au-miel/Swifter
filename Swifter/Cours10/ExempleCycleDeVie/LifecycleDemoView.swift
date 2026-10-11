//
//  LifecycleDemoView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//

import SwiftUI

struct LifecycleDemoView: View {
    @Environment(\.scenePhase) private var scenePhase

    @State private var events: [String] = []
    @State private var counter = 0

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Cycle de vie SwiftUI")
                    .font(.title)
                    .bold()

                VStack(alignment: .leading, spacing: 8) {
                    Text("État actuel de l'application")
                        .font(.headline)

                    Text(scenePhaseDescription)
                        .font(.title2)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                Divider()

                NavigationLink("Ouvrir l'écran de détail") {
                    LifecycleDetailView()
                }
                .buttonStyle(.borderedProminent)

                Button("Ajouter un événement manuel") {
                    counter += 1
                    addEvent("Événement manuel #\(counter)")
                }
                .buttonStyle(.bordered)

                Divider()

                Text("Journal des événements")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)

                if events.isEmpty {
                    Text("Aucun événement enregistré.")
                        .foregroundStyle(.secondary)
                        .frame(maxWidth: .infinity, alignment: .leading)
                } else {
                    List(events.reversed(), id: \.self) { event in
                        Text(event)
                    }
                    .listStyle(.plain)
                }
            }
            .padding()
            .navigationTitle("Cycle de vie")
        }
        .onAppear {
            addEvent("LifecycleDemoView : onAppear")
        }
        .onDisappear {
            addEvent("LifecycleDemoView : onDisappear")
        }
        .onChange(of: scenePhase) { _, newPhase in
            switch newPhase {
            case .active:
                addEvent("Application ACTIVE")

            case .inactive:
                addEvent("Application INACTIVE")

            case .background:
                addEvent("Application en ARRIÈRE-PLAN")
                saveExampleData()

            @unknown default:
                addEvent("État inconnu")
            }
        }
    }

    private var scenePhaseDescription: String {
        switch scenePhase {
        case .active:
            return "ACTIVE"
        case .inactive:
            return "INACTIVE"
        case .background:
            return "ARRIÈRE-PLAN"
        @unknown default:
            return "INCONNU"
        }
    }

    private func addEvent(_ message: String) {
        let time = Date.now.formatted(date: .omitted, time: .standard)
        let line = "\(time) — \(message)"

        events.append(line)
        print(line)
    }

    private func saveExampleData() {
        UserDefaults.standard.set(
            Date.now.timeIntervalSince1970,
            forKey: "lastBackgroundDate"
        )

        print("Exemple : données sauvegardées avant le passage en arrière-plan.")
    }
}

#Preview {
    LifecycleDemoView()
}
