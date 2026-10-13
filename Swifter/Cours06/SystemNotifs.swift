//
//  SystemNotifs.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func systemNotifs() {
    
    class Notification {
        let titre: String
        let message: String
        
        init(titre: String, message: String) {
            self.titre = titre
            self.message = message
        }
        
        func envoyer() {
            print("\(titre) : \(message)")
        }
    }

    class NotificationMessage: Notification {
        override func envoyer() {
            print("Nouveau message.")
        }
    }
    class NotificationBatterie: Notification {
        override func envoyer() {
            print("Attention batterie!")
        }
    }
    class NotificationSystem: Notification {
        override func envoyer() {
            print("Notification système.")
        }
    }
    
    let notifications: [Notification] = [
        Notification(titre: "Nouvelle notification", message: "Vos sims ont faim!"),
        NotificationMessage(titre: "Message", message: "Maman vous a envoyé une invitation."),
        NotificationSystem(titre: "Système", message: "Nouvelles mises a jour disponibles."),
        NotificationBatterie(titre: "Batterie", message: "Veuillez brancher votre téléphone!")
    ]
    
    for noti in notifications {
        if let notiSystem = noti as? NotificationSystem {
            notiSystem.envoyer()
        }
        if noti is NotificationBatterie {
            print("Une notification critique a été détectée.")
        }
        else {
            noti.envoyer()
        }
    }
}
