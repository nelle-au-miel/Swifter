//
//  Serie1.swift
//  Swifter
//
//  Created by Jaynelle Latortue-Raymond (Étudiant) on 2026-10-11.
//
func serie1() {

    let temperatures: [Double?] = [
        18.5, 21.0, nil, 16.5,
        24.0, nil, 19.5,
    ]

    let jours = [
        "Lundi", "Mardi", "Mercredi",
        "Jeudi", "Vendredi", "Samedi",
        "Dimanche",
    ]
    
    var nbTemp: Int = 0
    var nbMesuresAbs: Int = 0
    var maxTemp: Double = 16.5
    var minTemp: Double = 24.0
    var moyenne: Double = 0.0
    var joursChauds: [String] = []
    

    func analyserTemperature(_ temperature: Double?) -> String {
        if let temperature = temperature {
            if temperature > 20 {
                return "Chaud"
            } else if temperature >= 15 {
                return "Doux"
            } else {
                return "Froid"
            }
        } else {
            return "Donnée indisponible"
        }
    }

    var index = 0
    
    for temperature in temperatures {
        let jour = jours[index]
        var somme = 0.0

        if let temperature = temperature {
            print("\(jour) : \(temperature)°C - \(analyserTemperature(temperature))")
            nbTemp += 1
            
            if temperature > maxTemp {
                maxTemp = temperature
            }
            if temperature < minTemp {
                minTemp = temperature
            }
            somme += temperature
            moyenne = somme / Double(nbTemp)
            
            if temperature > 20 {
                joursChauds.append(jour)
            }
            
        } else {
            print("\(jour) : \(analyserTemperature(temperature))")
            nbMesuresAbs += 1
        }
        index += 1
    }
    
    print("Nombre de mesures disponibles : \(nbTemp)")
    print("Nombre de mesures absentes : \(nbMesuresAbs)")
    print("Température minimale : \(minTemp)")
    print("Température maximale : \(maxTemp)")
    print("Température moyenne : \(moyenne)")
    print("Jours chauds : \(joursChauds)")
}
