
// Simulation d'un téléchargement

let telechargement = 0

for telechargement in stride(from: telechargement, through: 100, by: 10) {
    print("Téléchargement : \(telechargement) %")

    if telechargement == 50 {
        print("La moitié du téléchargement est terminée.")
    }
    if telechargement == 100 {
        print("Téléchargement terminé.")
    }
}

// Tentatives de connexion

let maximumTentatives = 4
let connexionReussie = true

for maximumTentatives in stride(from: maximumTentatives, to: 0, by: -1) {
    if maximumTentatives == 3 {
        print("Connexion réussie !")
        break
    } else {
        print("Tentative de connexion : \(maximumTentatives)")
    }
}

// Compte à rebours

for nombre in stride(from: 10, through: 1, by: -1) {
    print(nombre)
}

print("Application prête !")
