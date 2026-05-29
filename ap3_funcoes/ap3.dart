import 'dart:math';

void main() {
  for (int raio in raio()) {
    print(
      "Raio: $raio, "
      "Área: ${area(raio).toStringAsFixed(2)}, "
      "Perímetro: ${perimetro(raio).toStringAsFixed(2)}",
    );
  }
}

List<int> raio() {
  final random = Random();

  final raio = List.generate(10, (_) => random.nextInt(100));

  return raio;
}

double area(int raio) {
  double area = pi * pow(raio, 2);
  return area;
}

double perimetro(int raio) {
  double perimetro = 2 * pi * raio;
  return perimetro;
}
