import 'dart:io';

// Fonction qui vérifie le mot de passe
void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    // Lever une exception si le mot de passe est trop court
    throw Exception('Le mot de passe doit contenir au moins 6 caractères');
  }
  print('Mot de passe valide !');
}

void main() {
  print('=== Exercice 3 : Lever une exception ===\n');
  
  // Demander le mot de passe à l'utilisateur
  stdout.write('Entrez un mot de passe : ');
  String? motdepasse = stdin.readLineSync();
  
  try {
    // Appel de la fonction avec gestion d'exception
    verifierMotdepasse(motdepasse ?? '');
  } catch (e) {
    // Affichage du message d'erreur
    print('Erreur : ${e.toString().replaceAll('Exception: ', '')}');
  }
}