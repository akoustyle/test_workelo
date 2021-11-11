import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static
  disable() {
    this.element.inneText = "Bingo!";
    this.element.setAttribute('disabled', '');
  }
}
// - Afficher une question à la fois
// - Permettre de sélectionner/désélectionner une réponse
// - Faire fonctionner les boutons "PREVIOUS" et "NEXT"
// - Après avoir finalisé le quiz, afficher la liste des réponses avec le label des réponses sélectionnées
