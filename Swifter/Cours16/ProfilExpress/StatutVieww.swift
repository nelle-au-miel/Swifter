//
//  StatutVieww.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-30.


import SwiftUI


struct StatutVieww: View {

    @Binding var disponible: Bool
    
    var body: some View {
        
        Button("Changer le statut") {
            disponible.toggle()
        }.buttonStyle(.borderedProminent)
    }
}
