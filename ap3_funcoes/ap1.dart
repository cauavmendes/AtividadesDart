import 'dart:math';

void main() {
  final lists = Lista();
  Soma(lists[0], lists[1]);
}

List<List<int>> Lista() {
  final random = Random();

  final lista1 = List.generate(5, (_) => random.nextInt(100));

  print("Lista: ${lista1.join(", ")}");

  final lista2 = List.generate(5, (_) => random.nextInt(100));

  print("Lista: ${lista2.join(", ")}");

  return [lista1, lista2];
}

void Soma(List<int> lista1, List<int> lista2) {
  if (lista1.isEmpty || lista2.isEmpty) {
    print("Lista vazia");
    return;
  }

  if (lista1.length != lista2.length) {
    print([]);
    return;
  }

  final soma = <int>[];

  for (int i = 0; i < lista1.length; i++) {
    print("${lista1[i]} + ${lista2[i]}");
  }

  for (int i = 0; i < lista1.length; i++) soma.add(lista1[i] + lista2[i]);
  print("Lista: ${soma.join(", ")}");
}
