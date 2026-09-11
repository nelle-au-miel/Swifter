//
//  Demo6-1.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-09-11.
//

import SwiftUI

// HÉRITAGE ET POLYMORPHISME

func demo6_1() {
    
    // Système de notifications
    
    class Notification {
        var titre: String
        var message: String
        
        init(titre: String = "", message: String = "") {
            self.titre = titre
            self.message = message
        }
        func envoyer() {
            print("Vous avez reçu une nouvelle notification")
        }
    }

    class NotificationMessage: Notification {
        override func envoyer() {
            print("Nouveau message : Message de Jaynelle")
        }
    }

    class NotificationBatterie: Notification {
        override func envoyer() {
            print("Alerte batterie : Batterie à 5%")
        }
    }

    class NotificationSysteme: Notification {
        override func envoyer() {
            print("Alerte système : Mise à jour disponible")
        }
    }

    let notifications: [Notification] = [
        Notification(),
        NotificationMessage(),
        NotificationBatterie(),
        NotificationSysteme()
    ]

    for notification in notifications {
        
        // Détection d'une notification critique
        
        if notification is NotificationBatterie {
            print("Une notification critique a été détectée.")
        }
        
        if let notification = notification as? NotificationSysteme {
            notification.envoyer()
        }
        
        notification.envoyer()
    }
}
