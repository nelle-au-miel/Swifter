//
//  DemoScrollViewView.swift
//  ScrollViewCollectionsSwiftUI
//
//  Khalil Loghlam
//

import SwiftUI

struct DemoScrollViewView: View {

    var body: some View {
        TabView {
            CatalogueView()
                .tabItem {
                    Label(
                        "Catalogue",
                        systemImage: "square.grid.2x2"
                    )
                }

            LazyStackDemoView()
                .tabItem {
                    Label(
                        "Liste",
                        systemImage: "list.bullet"
                    )
                }
        }
    }
}
