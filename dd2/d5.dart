import 'dart:math';

void main() {
  final lista = ListaCompras();
  lista.adicionarItem('Banana', 2);
  lista.adicionarItem('Maca', 5);
  lista.adicionarItem('Chiclete', 9);

  lista.marcarComoComprado('Banana');
  lista.marcarComoComprado('Maca');

  lista.marcarComoSemEstoque('Banana');

  lista.exibirItensDesejados();
  lista.exibirProgresso();
}

class ItemCompra {
  String nome;
  int quantidade;
  StatusItem status;

  ItemCompra(this.nome, this.quantidade) : status = StatusItem.desejado;
}

enum StatusItem { desejado, comprado, semEstoque }

class ListaCompras {
  final List<ItemCompra> itens = [];

  void adicionarItem(String nome, int quantidade) {
    itens.add(ItemCompra(nome, quantidade));
  }

  void marcarComoComprado(String nome) {
    for (final item in itens) {
      if (item.nome == nome) {
        item.status = StatusItem.comprado;
      }
    }
  }

  void marcarComoSemEstoque(String nome) {
    for (var item in itens) {
      if (item.nome == nome) {
        item.status = StatusItem.semEstoque;
      }
    }
  }

  void exibirItensDesejados() {
    for (var item in itens) {
      if (item.status == StatusItem.desejado) {
        print("${item.nome} - ${item.quantidade}");
      }
    }
  }

  void exibirProgresso() {
    int comprados = 0;
    for (var item in itens) {
      if (item.status == StatusItem.comprado) {
        comprados++;
      }
    }
    print("$comprados/${itens.length}");
  }

  ItemCompra? escolherItemPendenteAleatorio() {
    final pendentes = <ItemCompra>[];
    for (var item in itens) {
      if (item.status == StatusItem.desejado) {
        pendentes.add(item);
      }
    }
    if (pendentes.isEmpty == false) {
      final random = Random();
      final escolhido = pendentes[random.nextInt(pendentes.length)];
      return escolhido;
    } else {
      return null;
    }
  }
}
