void main() {
  int numero = 29;
  bool isPrimo = true;
  List<int> divisores = [];

  if (numero <= 1) {
    isPrimo = false;
  } else {
    for (int i = 2; i <= numero ~/ 2; i++) {
      if (numero % i == 0) {
        isPrimo = false;
        divisores.add(i);
      }
    }
  }

  if (isPrimo) {
    print('O número $numero é primo.');
  } else {
    print('O número $numero não é primo.');
    print('Divisores: $divisores');
  }
}
