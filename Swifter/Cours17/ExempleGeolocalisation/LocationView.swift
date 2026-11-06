//
//  LocationView.swift
//  GeolocalisationSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct LocationView: View {

    @State private var service = LocationService()

    var body: some View {

        NavigationStack {

            Form {

                Section("Autorisation") {

                    LabeledContent(
                        "État",
                        value: service.texteAutorisation
                    )

                    LabeledContent(
                        "Suivi",
                        value: service.suiviActif ? "Actif" : "Arrêté"
                    )
                }

                Section("Position actuelle") {

                    if let latitude = service.latitude,
                       let longitude = service.longitude {

                        LabeledContent(
                            "Latitude",
                            value: latitude.formatted(
                                .number.precision(
                                    .fractionLength(6)
                                )
                            )
                        )

                        LabeledContent(
                            "Longitude",
                            value: longitude.formatted(
                                .number.precision(
                                    .fractionLength(6)
                                )
                            )
                        )

                        if let altitude = service.altitude {
                            LabeledContent(
                                "Altitude",
                                value: "\(altitude.formatted(.number.precision(.fractionLength(1)))) m"
                            )
                        }

                        if let precision = service.precision {
                            LabeledContent(
                                "Précision",
                                value: "\(precision.formatted(.number.precision(.fractionLength(1)))) m"
                            )
                        }

                        if let date = service.dateMesure {
                            LabeledContent("Mesure") {
                                Text(
                                    date,
                                    format: .dateTime
                                        .hour()
                                        .minute()
                                        .second()
                                )
                            }
                        }

                    } else {

                        ContentUnavailableView(
                            "Position non disponible",
                            systemImage: "location.slash",
                            description: Text(
                                "Appuyez sur « Obtenir ma position »."
                            )
                        )
                    }
                }

                if let erreur = service.messageErreur {

                    Section("Message") {

                        Label(
                            erreur,
                            systemImage: "exclamationmark.triangle"
                        )
                        .foregroundStyle(.red)
                    }
                }

                Section("Position ponctuelle") {

                    Button {
                        print("Bouton : demanderPosition")
                        service.demanderPosition()
                    } label: {
                        Label(
                            service.latitude == nil
                                ? "Obtenir ma position"
                                : "Actualiser ma position",
                            systemImage: "location"
                        )
                    }
                }

                Section("Suivi continu") {

                    Button {
                        service.demarrerSuivi()
                    } label: {
                        Label(
                            "Démarrer le suivi",
                            systemImage: "location.fill"
                        )
                    }
                    .disabled(service.suiviActif)

                    Button(role: .destructive) {
                        service.arreterSuivi()
                    } label: {
                        Label(
                            "Arrêter le suivi",
                            systemImage: "stop.circle"
                        )
                    }
                    .disabled(!service.suiviActif)
                }
            }
            .navigationTitle("Géolocalisation")
        }
    }
}

#Preview {
    LocationView()
}
