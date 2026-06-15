import 'dart:math';

void main() {
  final List<Figura> figurinhas = [
    Figura("Figura 1", 1),
    Figura("Figura 2", 2),
    Figura("Figura 3", 3),
    Figura("Figura 4", 4),
    Figura("Figura 5", 5),
    Figura("Figura 6", 6),
    Figura("Figura 7", 7),
    Figura("Figura 8", 8),
    Figura("Figura 9", 9),
    Figura("Figura 10", 10),
    Figura("Figura 11", 11),
    Figura("Figura 12", 12),
    Figura("Figura 13", 13),
    Figura("Figura 14", 14),
    Figura("Figura 15", 15),
    Figura("Figura 16", 16),
    Figura("Figura 17", 17),
    Figura("Figura 18", 18),
    Figura("Figura 19", 19),
    Figura("Figura 20", 20),
  ];

  final album = Album();

  while (!album.estaCompleto) {
    PacoteFiguras pacote = PacoteFiguras(figurinhas);

    for (var figura in pacote.figuras) {
      album.adicionarFigura(figura);
    }
  }

  print('Figuras repetidas: ${album.figurasRepetidas.length}');
  album.imprimirAlbum();
}

class Figura {
  String nome;
  int codigo;

  Figura(this.nome, this.codigo);
}

class PacoteFiguras {
  final List<Figura> figuras = [];
  final random = Random();
  PacoteFiguras(List<Figura> todasFiguras) {
    for (int i = 0; i < 4; i++) {
      Figura figuraSorteada = todasFiguras[random.nextInt(todasFiguras.length)];
      figuras.add(figuraSorteada);
    }
  }
}

class Album {
  final Map<int, Figura> figurasColadas = {};
  final List<Figura> figurasRepetidas = [];
  bool possuiFigura(int codigo) {
    return figurasColadas.containsKey(codigo);
  }

  void adicionarFigura(Figura figura) {
    if (possuiFigura(figura.codigo)) {
      figurasRepetidas.add(figura);
    } else {
      figurasColadas[figura.codigo] = figura;
    }
  }

  bool get estaCompleto {
    return figurasColadas.length == 20;
  }

  void imprimirAlbum() {
    for (int codigo = 1; codigo <= 20; codigo++) {
      Figura? figura = figurasColadas[codigo];
      if (figura != null) {
        print('${figura.codigo} - ${figura.nome}');
      }
    }
  }
}
