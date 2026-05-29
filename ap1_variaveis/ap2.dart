void main() {
  const valor1 = 4.7;
  const valor2 = 9.7;
  const valor3 = 1.6;
  const valor4 = 5.3;

  const media = (valor1 + valor2 + valor3 + valor4) / 4;

  print(
    "A média entre [${valor1.toStringAsFixed(1)}, ${valor2.toStringAsFixed(1)}, ${valor3.toStringAsFixed(1)}, ${valor4.toStringAsFixed(1)}] = ${media.toStringAsFixed(1)}",
  );
}
