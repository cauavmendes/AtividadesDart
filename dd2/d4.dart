import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas
  final comparador = ComparadorFormasGeometricas();

  final circuloA = Circulo('Circulo A', 3);
  final circuloB = Circulo('Circulo B', 8);
  final retanguloA = Retangulo('Retângulo A', 4, 3);
  final retanguloB = Retangulo('Retângulo B', 19, 11);

  final formas = <FormaGeometrica>[
    circuloA,
    circuloB,
    retanguloA,
    retanguloB,
    TrianguloEquilatero('Equilatero', 4),
    TrianguloRetangulo('Retangulo', 6, 7),
    Pentagono('Pentagono', 2),
    Hexagono('Hexagono', 8),
  ];

  FormaGeometrica maiorArea = formas.first;
  FormaGeometrica maiorPerimetro = formas.first;

  for (final forma in formas) {
    maiorArea = comparador.maiorArea(maiorArea, forma);
    maiorPerimetro = comparador.maiorPerimetro(maiorPerimetro, forma);
  }
  print("Maior área: ${maiorArea.area} da forma ${maiorArea.nome}");
  print(
    "Maior perimetro: ${maiorPerimetro.perimetro} da forma ${maiorPerimetro.nome}",
  );
}

class TrianguloEquilatero extends FormaGeometrica {
  final double lado;
  TrianguloEquilatero(String nome, this.lado) : super(nome);

  @override
  double get area => (math.sqrt(3) / 4) * lado * lado;

  @override
  double get perimetro => 3 * lado;
}

class TrianguloRetangulo extends FormaGeometrica {
  final double catetoA;
  final double catetoB;

  TrianguloRetangulo(String nome, this.catetoA, this.catetoB) : super(nome);
  @override
  double get area => (catetoA * catetoB) / 2;

  @override
  double get perimetro =>
      catetoA + catetoB + math.sqrt((catetoA * catetoA) + (catetoB * catetoB));
}

class Pentagono extends FormaGeometrica {
  final double lado;

  Pentagono(String nome, this.lado) : super(nome);

  @override
  double get area =>
      (1 / 4) * math.sqrt(5 * (5 + (2 * math.sqrt(5)))) * lado * lado;

  @override
  double get perimetro => 5 * lado;
}

class Hexagono extends FormaGeometrica {
  final double lado;

  Hexagono(String nome, this.lado) : super(nome);

  @override
  double get area => ((3 * math.sqrt(3)) / 2) * lado * lado;

  @override
  double get perimetro => 6 * lado;
}

/// Representa a forma geometrica "círculo"
class Circulo extends FormaGeometrica {
  final double raio;

  Circulo(String nome, this.raio) : super(nome);

  @override
  /// Retorna a area desse círculo
  double get area => math.pi * math.pow(raio, 2);

  @override
  /// Retorna o perímetro desse círculo
  double get perimetro => 2 * math.pi * raio;
}

/// Representa a forma geometrica "retângulo", forma geometrica de quatro lados
/// e angulos retos (90 graus).
class Retangulo extends FormaGeometrica {
  /// Construtor padrao, recebe a [altura] e [largura] do retângulo
  Retangulo(String nome, this.altura, this.largura) : super(nome);

  final double largura;
  final double altura;

  @override
  /// Retorna a area desse círculo
  double get area => altura * largura;

  @override
  /// Retorna o perímetro desse círculo
  double get perimetro => (altura * 2) + (largura * 2);
}

/// Representa a forma geometrica "quadrado", que e um formato especial de
/// retângulo, onde todos os lados possuem o mesmo tamanho.
class Quadrado extends FormaGeometrica {
  /// Construtor padrao, recebe o [lado] do quadrado
  Quadrado(String nome, this.lado) : super(nome);

  final double lado;

  @override
  /// Retorna a area desse quadrado
  double get area => lado * lado;

  @override
  /// Retorna o perímetro desse quadrado
  double get perimetro => lado * 4;
}

/// Compara caracteristicas de formas geometricas
class ComparadorFormasGeometricas {
  FormaGeometrica maiorArea(
    FormaGeometrica formaGeometricaA,
    FormaGeometrica formaGeometricaB,
  ) {
    if (formaGeometricaA.area > formaGeometricaB.area) {
      return formaGeometricaA;
    } else {
      return formaGeometricaB;
    }
  }

  FormaGeometrica maiorPerimetro(
    FormaGeometrica formaGeometricaA,
    FormaGeometrica formaGeometricaB,
  ) {
    if (formaGeometricaA.perimetro > formaGeometricaB.perimetro) {
      return formaGeometricaA;
    } else {
      return formaGeometricaB;
    }
  }
}

abstract class FormaGeometrica {
  final String nome;
  double get area;
  double get perimetro;

  FormaGeometrica(this.nome);
}
