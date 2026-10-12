//
//  GestionApp.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func gestionApp() {
    var notifications: [String] = [
        "C'est l'heure de manger.",
        "Urgent Au dodo!",
        "Urgent Appelle maman!",
        "Éteint le téléphone."
    ]
    
    print("Nombre de notifications : \(notifications.count)")
    
    for notif in notifications {
        if notif.contains("Urgent") {
            print("[IMPORTANT] \(notif)")
        } else {
            print(notif)
        }
    }
    
    var parametres: [String: String] = [
        "theme": "sombre",
        "langue": "fr",
        "uniteDistance": "km"
    ]
    
    for param in parametres {
        print(param)
    }
    
    let volume = parametres["volume"] ?? "50"
    print(volume)
    
    let permissionsRequises: Set<String> = ["camera", "location", "notifications"]
    let permissionsAccordees: Set<String> = ["camera", "notifications"]
    let permissionsManquantes = permissionsRequises.subtracting(permissionsAccordees)
    print(permissionsManquantes)
    
    let appareil = (
        modele: "android",
        batterie: 75,
        connecte: true
    )
    print("------ APPAREIL ------")
    print("Modèle : \(appareil.modele)")
    print("Batterie : \(appareil.batterie)")
    print("Connecté : \(appareil.connecte)")
}
