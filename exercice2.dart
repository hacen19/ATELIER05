import 'dart:io';

void main() {
  print('=== Exercice 2 : Gérer le format des données ===\n');
  
  // Demander l'âge à l'utilisateur
  stdout.write('Veuillez saisir votre âge : ');
  String? input = stdin.readLineSync();
  
  try {
    // Transformation du texte en nombre
    int age = int.parse(input ?? '');
    print('Votre âge est : $age ans');
  } on FormatException catch (e) {
    // Gestion de l'exception de format
    print('Erreur : Le format saisi n\'est pas valide. Veuillez entrer un nombre.');
  } finally {
    // Bloc finally exécuté dans tous les cas
    print('Fin d\'opération');
  }
}