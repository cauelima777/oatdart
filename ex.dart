import 'dart:io';

void main() {
  print("1-Temperatura de Celsius para Fahrenheit");
  print("2-Temperatura de Fahrenheit para Celsius");

  String? input = stdin.readLineSync();

  if (input != null) {
    int option = int.parse(input);

    if (option == 1) {
      stdout.write("Diga o valor em Celsius: ");
      String? celsiusInput = stdin.readLineSync();

      if (celsiusInput != null) {
        double celsius = double.parse(celsiusInput);
        double fahrenheit = 9 / 5 * celsius + 32;
        print("Valor em Fahrenheit: $fahrenheit");
      } else {
        print("Entrada inválida.");
      }
    } else if (option == 2) {
      stdout.write("Diga o valor em Fahrenheit: ");
      String? fahrenheitInput = stdin.readLineSync();

      if (fahrenheitInput != null) {
        double fahrenheit = double.parse(fahrenheitInput);
        double celsius = (fahrenheit - 32) * 5 / 9;
        print("Valor em Celsius: $celsius");
      } else {
        print("Entrada inválida.");
      }
    } else {
      print("Opção inválida.");
    }
  } else {
    print("Entrada inválida.");
  }
}
