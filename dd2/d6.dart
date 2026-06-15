import 'dart:collection';

void main() {
  final baralho = Baralho();

  baralho.empilharCarta(Carta('A', Naipe.paus));
  baralho.empilharCarta(Carta('A', Naipe.copas));
  baralho.empilharCarta(Carta('A', Naipe.espadas));
  baralho.empilharCarta(Carta('A', Naipe.ouros));

  while (baralho.estaVazio() == false) {
    Carta carta = baralho.removerCarta();
    print(carta);
  }
}

enum Naipe { paus, copas, espadas, ouros }

class Carta {
  String valor;
  Naipe naipe;

  Carta(this.valor, this.naipe);

  @override
  String toString() {
    return ('$valor de ${naipe.name}');
  }
}

class Baralho {
  Queue<Carta> cartas = Queue<Carta>();

  void empilharCarta(Carta carta) {
    cartas.addFirst(carta);
  }

  Carta removerCarta() {
    return cartas.removeFirst();
  }

  bool estaVazio() {
    return cartas.isEmpty;
  }
}
