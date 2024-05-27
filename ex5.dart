void main() {
  int n = 10;
  List<int> fibonacci = gerarFibonacci(n);

  print('Sequência de Fibonacci até o $n-ésimo termo:');
  print(fibonacci);
}

List<int> gerarFibonacci(int n) {
  List<int> sequencia = [];

  if (n <= 0) {
    return sequencia;
  }

  sequencia.add(0);

  if (n == 1) {
    return sequencia;
  }

  sequencia.add(1);

  for (int i = 2; i < n; i++) {
    int proximoTermo = sequencia[i - 1] + sequencia[i - 2];
    sequencia.add(proximoTermo);
  }

  return sequencia;
}
