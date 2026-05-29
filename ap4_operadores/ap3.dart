void main() {
  final Lista = ["Cauã", "Vitor", "Mendes", "João", "Sebastião"];

  List<String> removerElemento({List<String>? lista, String? elemento}) {
    lista?.remove(elemento);

    return lista ?? [];
  }

  final novaLista = removerElemento(lista: Lista, elemento: "João");

  for (var item in novaLista) {
    print(item);
  }
}
