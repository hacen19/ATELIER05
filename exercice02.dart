import 'dart:io';

void main() {
  print("Entrez votre age :");
  String? input = stdin.readLineSync();

  try {
    int age = int.parse(input!);
    print("Vous avez $age ans");
  } on FormatException catch (e) {
    print("Format invalide");
  } finally {
    print("Fin d'opération");
  }
}