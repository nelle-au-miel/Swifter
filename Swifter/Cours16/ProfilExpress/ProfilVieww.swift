//
//  ProfilVieww.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-30.
//

import SwiftUI


struct ProfilVieww: View {
    
    @State private var disponible = true
    @State private var connexions = 0
    
    var body: some View {
        
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable().frame(width: 100, height: 100)
            
            Text("Jaynelle Latortue")
                .font(.title2).bold()
            
            Text("Statut : \(disponible ? "Disponible" : "Indisponible")")
                .foregroundStyle(.green)
            
            StatutVieww(disponible : $disponible)

            Divider()
            
            Text("Connexions : \(connexions)").font(.headline)
            
            HStack {
                Button("+ Connexion") { connexions += 1 }
                    .buttonStyle(.bordered)
                
                Button("Réinitialiser") { connexions = 0 }
                    .buttonStyle(.bordered)
            }
        }
    }
}
