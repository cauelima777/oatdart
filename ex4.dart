void main() {
  double precoInicial = 120.00;
  double percentualDesconto = 15;

  double precoFinal = calcularPrecoFinal(precoInicial, percentualDesconto);

  print('Preço inicial: R\$${precoInicial.toStringAsFixed(2)}');
  print('Percentual de desconto: $percentualDesconto%');
  print('Preço final após desconto: R\$${precoFinal.toStringAsFixed(2)}');
}

double calcularPrecoFinal(double preco, double desconto) {
  double valorDesconto = preco * (desconto / 100);
  return preco - valorDesconto;
}
