//
//  GererAppareils.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func gererAppareils() {

    protocol Connectable {
        func connecter()
        func deconnecter()
    }

    protocol Rechargable {
        var batterie: Int { get set }
        func recharger()
    }

    class Telephone: Connectable, Rechargable {
        var batterie: Int

        init(batterie: Int) {
            self.batterie = batterie
        }
        func connecter() {
            print("Telephone connecté")
        }
        func deconnecter() {
            print("Telephone déconnecté")
        }
        func recharger() {
            print("Téléphone en charge")
        }
    }

    struct Montre: Connectable, Rechargable {
        var batterie: Int

        func connecter() {
            print("Montre connecté")
        }
        func deconnecter() {
            print("Montre déconnecté")
        }
        func recharger() {
            print("Montre en charge")
        }
    }

    class Tablette: Connectable {
        func connecter() {
            print("Tablette connecté")
        }
        func deconnecter() {
            print("Tablette déconnecté")
        }
    }

    let appareils: [any Connectable] = [
        Tablette(),
        Montre(batterie: 74),
        Telephone(batterie: 27),
    ]

    for app in appareils {
        app.connecter()
    }
}
