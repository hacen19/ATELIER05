import 'dart:io';

// Classe d'exception personnalisée
class MotdepasseCourtException implements Exception {
  final String message;
  
  MotdepasseCourtException(this.message);
  
  @override
  String toString() => 'MotdepasseCourtException: $message';
}

// Fonction qui vérifie le mot de passe avec exception personnalisée
void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    // Lever l'exception personnalisée
    throw MotdepasseCourtException(
      'Le mot de passe doit contenir au moins 6 caractères'
    );
  }
  print('Mot de passe valide !');
}

void main() {
  print('=== Exercice 4 : Exception personnalisée ===\n');
  
  // Demander le mot de passe à l'utilisateur
  stdout.write('Entrez un mot de passe : ');
  String? motdepasse = stdin.readLineSync();
  
  try {
    // Appel de la fonction
    verifierMotdepasse(motdepasse ?? '');
  } on MotdepasseCourtException catch (e) {
    // Gestion de l'exception personnalisée
    print('Erreur : ${e.message}');
  }
}