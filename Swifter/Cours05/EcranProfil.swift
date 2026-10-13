//
//  EcranProfil.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
import SwiftUI

struct PfpView: View {
    @State private var nom: String = ""
    @State private var courriel: String = ""
    @State private var notifications: Bool = false
    
    var body: some View {
        VStack {
            Image("img-pfp")
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 100)
                .cornerRadius(50)
            
            Text("Mon profil")
                .font(.title)
            
            TextField("Nom", text: $nom)
            
            TextField("Courriel", text: $courriel)
            
            Toggle("Notifications", isOn: $notifications)
            
            Button("Enregistrer") {
                print("Nom : \(nom)")
                print("Courriel : \(courriel)")
                print("Notifications : \(notifications)")
            }
            .disabled(nom.isEmpty || courriel.isEmpty)
            .padding()
            .background(.green)
            .foregroundStyle(.black)
            .cornerRadius(15)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.purple.opacity(0.8))
        .foregroundStyle(.white)
    }
}
