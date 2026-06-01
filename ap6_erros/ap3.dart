import 'dart:math';

void main() {
  final random = Random();
  final numero1 = random.nextDouble() * 100;
  final numero2 = random.nextDouble() * 100;

  try {
    double base = numero1;
    double altura = numero2;

    final retangulo = Retangulo(base, altura, numero1, numero2);

    print("Área do retângulo: ${retangulo.calcularArea().toStringAsFixed(2)}");
  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}

abstract interface class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  final numero1;
  final numero2;
  double _base;
  double _altura;

  Retangulo(this._base, this._altura, this.numero1, this.numero2) {
    if (_base <= 0 || _altura <= 0) {
      throw Exception(
        "Dimensões inválidas: informe apenas valores positivos maiores que zero.",
      );
    }
  }

  double calcularArea() {
    return _base * _altura;
  }
}
