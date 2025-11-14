import 'dart:io';

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception("Mot de passe trop court");
  }
  print("Mot de passe valide");
}

void main() {
  print("Entrez un mot de passe :");
  String? motdepasse = stdin.readLineSync();

  try {
    verifierMotdepasse(motdepasse!);
  } catch (e) {
    print("Erreur : ${e.toString()}");
  }
}