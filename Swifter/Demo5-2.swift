//
//  Demo5-2.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-09-10.
//

import SwiftUI

// VUES, CONTRÔLES ET MODIFICATEURS

struct Demo5_2: View {
    
    @State private var nom = ""
    @State private var courriel = ""
    @State private var notifications = false
        
    var body: some View {

        // Écran de profil
                
        VStack() {
            Image("pixel-cat")
                .resizable()
                .frame(width: 100, height: 70)
            
            Text("Mon Profil")
                .font(.title)
                .bold()
            
            TextField(
                "Nom",
                text: $nom)
            
            TextField(
                "Courriel",
                text: $courriel)
            
            Toggle(
                "Notifications",
                isOn: $notifications
            )
            Button("Enregistrer") {
                print("Nom : \(nom)")
                print("Courriel : \(courriel)")
                print("Notifications : \(notifications)")
            }
            .disabled(nom.isEmpty || courriel.isEmpty)
            .padding(10)
            .background(.purple.opacity(0.2))
            .cornerRadius(10)
            .foregroundStyle(.black)
        }
        .padding(40)
    }
}
