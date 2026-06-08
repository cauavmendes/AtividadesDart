void main() {
  List<int> numeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];

  for (var numero in numeros) {
    var decimal = numero.toString();
    var binario = numero.toRadixString(2);
    var octal = numero.toRadixString(8);
    var hexadecimal = numero.toRadixString(16);
    numeros.sort();
    print(
      "Decimal: $decimal, binário: $binario, octal: $octal, hexadecimal: $hexadecimal",
    );
  }
}
