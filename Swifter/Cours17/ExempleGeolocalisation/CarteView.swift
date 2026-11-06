//
//  CarteView.swift
//  Geolocalisation
//
//  Created by Khalil Loghlam on 2026-11-06.
//

import MapKit
import SwiftUI

struct CarteView: View {
    @State private var camera: MapCameraPosition = .userLocation(fallback: .automatic)
    private let montreal = CLLocationCoordinate2D(latitude: 45.5019, longitude: -73.5674)
    
    var body: some View {
        Map(position: $camera) {
            UserAnnotation()
            Marker("Montréal", coordinate: montreal)
        }
        .mapControls {
            MapUserLocationButton()
        }
    }
}

#Preview {
    CarteView()
}

