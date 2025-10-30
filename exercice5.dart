import 'dart:io';

// Classe d'exception personnalisée pour nombre négatif
class NombreNegatifException implements Exception {
  final String message;
  
  NombreNegatifException(this.message);
  
  @override
  String toString() => 'NombreNegatifException: $message';
}

void main() {
  print('=== Exercice 5 : Exception personnalisée (nombre négatif) ===\n');
  
  // Demander un nombre à l'utilisateur
  stdout.write('Entrez un nombre : ');
  String? input = stdin.readLineSync();
  
  try {
    // Transformation du texte en nombre
    int nombre = int.parse(input ?? '');
    
    // Vérifier si le nombre est négatif
    if (nombre < 0) {
      throw NombreNegatifException('Le nombre ne peut pas être négatif');
    }
    
    // Calculer et afficher le carré
    int carre = nombre * nombre;
    print('Le carré de $nombre est : $carre');
    
  } on FormatException catch (e) {
    // Gestion de l'exception de format
    print('Erreur : Veuillez entrer un nombre valide');
  } on NombreNegatifException catch (e) {
    // Gestion de l'exception personnalisée
    print('Erreur : ${e.message}');
  } finally {
    // Bloc finally exécuté dans tous les cas
    print('Fin du traitement');
  }
}
