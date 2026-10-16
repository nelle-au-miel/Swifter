//
//  LazyStackDemoView.swift
//  ScrollViewCollectionsSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct LazyStackDemoView: View {

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(1...100, id: \.self) { numero in
                        HStack {
                            Image(systemName: "number.circle")
                            Text("Élément \(numero)")
                            Spacer()
                        }
                        .padding()
                        .background(.gray.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
                .padding()
            }
            .navigationTitle("LazyVStack")
        }
    }
}
