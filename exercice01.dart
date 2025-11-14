void main() {
  try {
    var resultat = 12 / 0;
    print(resultat);
  } catch (e) {
    print("Division impossible");
  }
}