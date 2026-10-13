//
//  CarteVehicule.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
import SwiftUI

struct VehiculeView: View {
    private var nom: String = "Hyundai"
    private var modele: String = "Elentra"
    private var etat: String = "Disponible"
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image(systemName: "car")
                    Text(nom)
                        .font(.largeTitle)
                }
                Text(modele)
                    .font(.title)
                Text(etat)
                    .font(.title)
                    .foregroundStyle(.purple)
                Button("Détails") {}
                    .font(.title)
                    .foregroundStyle(.white)
            }
            .padding(80)
            .background(.purple.opacity(0.5))
            .cornerRadius(150)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.pink.opacity(0.1))
    }
}
