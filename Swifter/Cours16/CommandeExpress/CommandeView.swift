//
//  CommandeView.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-30.
//

import SwiftUI


struct CommandeView: View {
    
    @State var viewModel : CommandeViewModel
    
    var body: some View {
        
        VStack {
            
            Text("Commande").font(.title).bold()
            
            Text(viewModel.prodvit.nom).font(.title2).bold()
            
            Text("\(viewModel.prodvit.prix) $").font(.caption)
            
            Text("Quantité : \(viewModel.quantite)")
            
            HStack {
                
                Button("-") {
                    viewModel.diminuer()
                }.buttonStyle(.bordered)
                
                Button("+") {
                    viewModel.augmenter()
                }.buttonStyle(.bordered)
            }
            
            Divider()
            
            Text("Total : \(viewModel.total) $").font(.title3).bold()
            
            Button("Réinitialiser") {
                viewModel.reinitialiser()
            }.buttonStyle(.bordered)
        }
    }
}
