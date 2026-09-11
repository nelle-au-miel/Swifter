//
//  Demo5-1.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-09-10.
//

import SwiftUI

// MISE EN PAGE AVEC HSTACK, VSTACK ET ZSTACK

struct Demo5_1: View {
    var body: some View {
        
        // Carte de véhicule
        
        let nom: String = "Hyundai"
        let modele: String = "Elantra"
        let etat: String = "Disponible"
        
        ZStack() {
            VStack() {
                HStack() {
                    Image(systemName: "car")
                    Text("\(nom) \(modele)")
                }
                Text("État : \(etat)")
                Button("Détails") {
                    
                }
                .padding(10)
                .background(.green.opacity(0.4))
                .cornerRadius(20)
            }
        }
        .padding(20)
        .frame(width: 300, height: 200)
        .background(.pink.opacity(0.2))
        .cornerRadius(20)
    }
}
