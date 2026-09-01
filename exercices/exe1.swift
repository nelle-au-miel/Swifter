
// I. Données ----------------------------------------------------------

let nomClient = "Jaynelle"
let prixHT = 25.00
var qte = 4
var membre = true
let codePromo = "SWIFT10"

// II. Questions--------------------------------------------------------

// Exercice 7
if qte <= 0 {
    print("Erreur : quantité invalide")
} else {
    // Exercice 1
    let sousTotal = prixHT * Double(qte)

    // Exercice 2
    var reductionQte = 0.0
    var reductionMembre = 0.0

    if qte <= 4 {
        reductionQte = 0.0
    } else if qte <= 9 {
        reductionQte = 0.05
    } else if qte >= 10 {
        reductionQte = 0.10
    }

    // Exercice 3
    if membre {
        reductionMembre += 0.05
    }

    // Exercice 4
    var promotion = 0

    if codePromo == "SWIFT10" {
        promotion += 10
    }

    // Exercice 5
    var montantFinal = sousTotal * (1 - (reductionQte + reductionMembre))
    montantFinal -= Double(promotion)

    // Exercice 6
    var typeCmd = ""

    if montantFinal < 50 {
        typeCmd = "Petite commande"
    } else if montantFinal <= 99.99 {
        typeCmd = "Commande moyenne"
    } else if montantFinal >= 100 {
        typeCmd = "Grande commande"
    }

    // Affichage
    print("------ COMMANDE ------")

    print("Client : \(nomClient)")
    print("Prix unitaire : \(prixHT) $")
    print("Quantité : \(qte)")
    print("Sous-total : \(sousTotal) $")
    print("Réduction quantité : \(reductionQte) %")
    print("Réduction membre : \(reductionMembre) %")
    print("Promotion : \(promotion) $")
    print("Total final : \(montantFinal) $")
    print("Type de commande : \(typeCmd)")

    print("----------------------")
}
