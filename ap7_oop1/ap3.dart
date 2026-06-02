void main() {
  List<Produto> listaDeProdutos = [
    Produto('Teclado', 350),
    Produto('Mouse', 400),
    Produto('Headset', 200),
    Produto('Mousepad', 50),
    Produto('Monitor', 900),
  ];

  for (var produtos in listaDeProdutos) {
    produtos.nome;
    produtos.desconto;

    print(
      "Novo preço do produto ${produtos.nome} (com desconto) ${produtos.desconto(10)}",
    );
  }
}

class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  double desconto(double percentual) {
    double valorDesconto = preco * percentual / 100;
    double precoFinal = preco - valorDesconto;

    return precoFinal;
  }
}
