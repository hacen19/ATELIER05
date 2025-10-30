void main() {
  print('=== Exercice 1 : Try-Catch ===\n');
  
  try {
    // Tentative de division par zéro
    var resultat = 12 ~/ 0;
    print('Résultat : $resultat');
  } catch (e) {
    // Gestion de l'exception
    print('Division impossible');
  }
}