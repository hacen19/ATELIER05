import 'dart:io';

class NombreNegatifException implements Exception {
  String message;
  NombreNegatifException(this.message);

  String toString() {
    return message;
  }
}

void main() {
  print("Entrez un nombre :");
  String? input = stdin.readLineSync();

  try {
    int nombre = int.parse(input!);

    if (nombre < 0) {
      throw NombreNegatifException("Le nombre ne peut pas etre negatif");
    }

    int carre = nombre * nombre;
    print("Le carre de $nombre est $carre");

  } on FormatException {
    print("Veuillez entrer un nombre valide");
  } catch (e) {
    print(e);
  } finally {
    print("Fin du programme");
  }
}