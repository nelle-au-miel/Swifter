//
//  LocationService.swift
//  GeolocalisationSwiftUI
//
//  Khalil Loghlam
//

import Foundation
import CoreLocation
import Observation

@Observable
final class LocationService: NSObject {

    public let manager = CLLocationManager()

    var latitude: Double?
    var longitude: Double?
    var altitude: Double?
    var precision: Double?
    var dateMesure: Date?

    var statutAutorisation: CLAuthorizationStatus = .notDetermined
    var messageErreur: String?
    var suiviActif = false

    public var suiviEnAttente = false

    override init() {
        super.init()

        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest // recevoir des mises à jour pour tous les mouvements détectés
        //manager.distanceFilter = 10 // valeur par defaut est kCLDistanceFilterNone // demande des mises à jour lorsque l'appareil se déplace d'au moins 10 mètres.
        // les 10 mètres ne sont pas une garantie absolue. Les mises à jour dépendent de la précision réelle du GPS et des conditions de localisation.

        statutAutorisation = manager.authorizationStatus
    }

    func demanderPosition() {
        messageErreur = nil

        switch manager.authorizationStatus {
        case .notDetermined:
            suiviEnAttente = false
            manager.requestWhenInUseAuthorization()

        case .authorizedWhenInUse, .authorizedAlways:
            manager.requestLocation()

        case .denied:
            messageErreur = "L'accès à la position a été refusé."

        case .restricted:
            messageErreur = "L'accès à la position est restreint."

        @unknown default:
            messageErreur = "État d'autorisation inconnu."
        }
    }

    func demarrerSuivi() {
        messageErreur = nil

        switch manager.authorizationStatus {
        case .notDetermined:
            suiviEnAttente = true
            manager.requestWhenInUseAuthorization()

        case .authorizedWhenInUse, .authorizedAlways:
            manager.startUpdatingLocation()
            suiviActif = true

        case .denied:
            messageErreur = "L'accès à la position a été refusé."

        case .restricted:
            messageErreur = "L'accès à la position est restreint."

        @unknown default:
            messageErreur = "État d'autorisation inconnu."
        }
    }

    func arreterSuivi() {
        suiviEnAttente = false
        manager.stopUpdatingLocation()
        suiviActif = false
    }
}

extension LocationService: CLLocationManagerDelegate {
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        print("Changement ou initialisation de l'autorisation")
        
        statutAutorisation = manager.authorizationStatus
        
        switch manager.authorizationStatus {
        case .authorizedWhenInUse, .authorizedAlways:
            if suiviEnAttente {
                suiviEnAttente = false
                print("requestLocation depuis le bouton")
                manager.startUpdatingLocation()
                suiviActif = true
            } else {
                print("requestLocation depuis le delegate")
                manager.requestLocation()
            }
            
        case .denied:
            suiviEnAttente = false
            manager.stopUpdatingLocation()
            suiviActif = false
            messageErreur = "L'accès à la position a été refusé."
            
            latitude = nil
            longitude = nil
            altitude = nil
            precision = nil
            dateMesure = nil
            
        case .restricted:
            suiviEnAttente = false
            manager.stopUpdatingLocation()
            suiviActif = false
            messageErreur = "L'accès à la position est restreint."
            
        default:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // print("Position reçue à : \(Date())")
        print("Position reçue - suiviActif : \(suiviActif)")
        
        guard let location = locations.last else {
            return
        }
        
        latitude = location.coordinate.latitude
        longitude = location.coordinate.longitude
        altitude = location.altitude
        precision = location.horizontalAccuracy
        dateMesure = location.timestamp
        messageErreur = nil
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        messageErreur = error.localizedDescription
        print("Erreur CoreLocation : \(error.localizedDescription)")
    }
    
    var texteAutorisation: String {
        switch statutAutorisation {
        case .notDetermined:
            return "Non déterminée"
        case .restricted:
            return "Restreinte"
        case .denied:
            return "Refusée"
        case .authorizedAlways:
            return "Toujours autorisée"
        case .authorizedWhenInUse:
            return "Autorisée pendant l'utilisation"
        @unknown default:
            return "Inconnue"
        }
    }
}
