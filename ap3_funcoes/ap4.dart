import 'dart:math';

void main() {
  for (int numero in numeros()) {
    print(
      "Número: $numero, "
      "Decimal: ${decimal(numero)}, "
      "Binário: ${binario(numero)}, "
      "Octal: ${octal(numero)}, "
      "Hexadecimal: ${hexadecimal(numero)}",
    );
  }
}

List<int> numeros() {
  final random = Random();
  final numeros = List.generate(15, (_) => random.nextInt(5000));
  print("Números: ${numeros.join(", ")}");

  return numeros;
}

int decimal(int numero) {
  return numero;
}

String binario(int numero) {
  return numero.toRadixString(2);
}

String octal(int numero) {
  return numero.toRadixString(8);
}

String hexadecimal(int numero) {
  return numero.toRadixString(16);
}
