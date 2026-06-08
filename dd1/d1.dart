import 'dart:math';

void main() {
  final raios = [5, 8, 12, 7.3, 18, 2, 25];

  for (var raio in raios) {
    double area = pi * raio * raio;
    double perimetro = 2 * pi * raio;
    print(
      "Raio: $raio, area: ${area.toStringAsFixed(2)}, perimetro: ${perimetro.toStringAsFixed(2)}",
    );
  }
}
