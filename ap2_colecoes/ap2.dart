import 'dart:math';

void main() {
  final random = Random();

  final lista = List.generate(50, (_) => random.nextInt(15));

  print("Lista original: ${lista.join(' ; ')}");

  lista.removeWhere((item) => item.isEven);

  print("Lista atualizada: ${lista.join(' ; ')}");
}
