import 'dart:math';

void main() {
  final random = Random();

  final lista = List.generate(10, (_) => random.nextInt(100));

  for (var i = 0; i < lista.length; i++) {
    print("Posição: $i, Valor: ${lista[i]}");
  }
}
