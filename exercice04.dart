import 'dart:io';

class MotdepasseCourtException implements Exception {
  String message;
  MotdepasseCourtException(this.message);

  String toString() {
    return message;
  }
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException("Le mot de passe doit avoir au moins 6 caracteres");
  }
  print("Mot de passe valide");
}

void main() {
  print("Entrez un mot de passe :");
  String? motdepasse = stdin.readLineSync();

  try {
    verifierMotdepasse(motdepasse!);
  } catch (e) {
    print(e);
  }
}