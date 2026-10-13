//
//  ProfilStructOuClass.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func profilStructOuClass() {
    
    struct Pfp {
        let nom: String
        let age: Int
        var ville: String
    }
    
    var pfp1 = Pfp(nom: "Jaynelle", age: 24, ville: "Montréal")
    var pfp2 = pfp1
    
    pfp2.ville = "Laval"
    
    print(pfp1)
    print(pfp2)
    
    class SessionProfil {
        let nomUser: String
        var estConnecte: Bool
        
        init(nomUser: String, estConnecte: Bool) {
            self.nomUser = nomUser
            self.estConnecte = estConnecte
        }
    }
    
    let session1 = SessionProfil(nomUser: "Chomi", estConnecte: false)
    let session2 = session1
    
    session2.estConnecte = true
    
    print("\(session1.nomUser) - \(session1.estConnecte)")
    print("\(session2.nomUser) - \(session2.estConnecte)")
}
