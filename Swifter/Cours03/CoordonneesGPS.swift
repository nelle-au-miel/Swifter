//
//  CoordonneesGPS.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func coordonneesGPS() {
    var latitude: Double? = 12.7
    var longitude: Double? = 9.0
    
    if let latitude, let longitude {
        print("Position GPS disponible")
        print("Latitude : \(latitude)")
        print("Longitude : \(longitude)")
    }
    else {
        print("En attente de la position GPS...")
    }
}
