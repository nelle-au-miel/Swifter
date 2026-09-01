
// Évaluation d'une note

let note = 78

if note >= 90 {
    print("Excellent")
} else if note >= 80 {
    print("Très bien")
} else if note >= 70 {
    print("Bien")
} else if note >= 60 {
    print("Réussite")
} else {
    print("Échec")
}

// Validation d'un accès

let age = 22
let estConnecte = true
let abonnementActif = true

if age >= 18, estConnecte, abonnementActif {
    print("Accès autorisé")
} else {
    print("Accès refusé")
}

// Nombre pair ou impair

let nombre = 17

if nombre % 2 == 0 {
    print("\(nombre) est pair")
} else {
    print("\(nombre) est impair")
}

// Mini système de connexion

let nomUtilisateur = "admin"
let motDePasse = "1234"

if nomUtilisateur == "admin", motDePasse == "1234" {
    print("Connexion réussie")
} else {
    print("Nom d'utilisateur ou mot de passe incorrect")
}
