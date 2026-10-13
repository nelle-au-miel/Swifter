//
//  ObserveProgression.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func gererTelecharge() {
    
    class Telechargement {
        
        let nomFichier: String
        var tailleTotale: Double
        private(set) var progression: Int = 0 {
            didSet {
                if progression >= 50 {
                    print("La moitié du téléchargement est atteinte.")
                }
                if progression == 100 {
                    print("Téléchargement terminé.")
                }
            }
        }

        var estTermine: Bool { return progression >= 100 }
        
        var etat: String {
            if progression == 100 {
                return "Terminé"
            } else if progression > 0 && progression < 100 {
                return "En cours"
            } else if progression == 0{
                return "En attente"
            } else {
                return "Invalide"
            }
        }
        static var nbTelechargements: Int = 0

                
        init(nomFichier: String, tailleTotale: Double) {
            self.nomFichier = nomFichier
            self.tailleTotale = tailleTotale
            Telechargement.nbTelechargements += 1
        }
        
        func avancer(de valeur: Int) {
            progression += valeur
            
            if progression <= 0 {
                progression = 0
            }
            if progression > 100 {
                progression = 100
            }
        }
    }
    
    let telechargements: [Telechargement] = [
        Telechargement(nomFichier: "document.txt", tailleTotale: 1.8),
        Telechargement(nomFichier: "laboratoire_1.docx", tailleTotale: 20),
        Telechargement(nomFichier: "examen_intra.pdf", tailleTotale: 19.2),
        Telechargement(nomFichier: "seance-07.pptx", tailleTotale: 4),
        Telechargement(nomFichier: "index.php", tailleTotale: 4.6)
    ]
    
    telechargements[1].avancer(de: 30)
    telechargements[2].avancer(de: 60)
    telechargements[3].avancer(de: 100)
    telechargements[4].avancer(de: 80)
    
    for fichier in telechargements {
        print("------ TÉLÉCHARGEMENT ------")
        print("Fichier : \(fichier.nomFichier)")
        print("Taille : \(fichier.tailleTotale) Mo")
        print("Progression : \(fichier.progression) %")
        print("État : \(fichier.etat)")
    }
    print("Nombre de téléchargements : \(Telechargement.nbTelechargements)")
}
