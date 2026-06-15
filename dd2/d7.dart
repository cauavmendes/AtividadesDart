import 'dart:collection';
import 'dart:math';

void main() {
  final gerador = GeradorNomeAleatorio();
  final fila = FilaMercado();

  for (int i = 0; i <= 9; i++) {
    Pessoa pessoa = gerador.gerarNomeAleatorio();

    fila.entrarNaFila(pessoa);
  }

  while (!fila.estaVazia()) {
    fila.atenderPessoa();
  }
}

class Pessoa {
  String nome;
  String sobrenome;

  Pessoa(this.nome, this.sobrenome);

  @override
  String toString() {
    return ("$nome $sobrenome");
  }
}

class GeradorNomeAleatorio {
  final random = Random();
  List<String> nome = ['João', 'Maria', 'José', 'Sebastião', 'Douglas'];
  List<String> sobrenome = ['Silva', 'Mendes', 'Junior', 'Pontaldi', 'Breis'];
  Pessoa gerarNomeAleatorio() {
    int indiceNome = random.nextInt(nome.length);
    int indiceSobrenome = random.nextInt(sobrenome.length);

    String nomes = nome[indiceNome];
    String sobrenomes = sobrenome[indiceSobrenome];
    return Pessoa(nomes, sobrenomes);
  }
}

class FilaMercado {
  DoubleLinkedQueue<Pessoa> fila = DoubleLinkedQueue();

  void entrarNaFila(Pessoa pessoa) {
    fila.addLast(pessoa);
    print("$pessoa entrou na fila");
  }

  void atenderPessoa() {
    Pessoa pessoaAtendida = fila.removeFirst();

    print("$pessoaAtendida foi atendido(a)");
  }

  bool estaVazia() {
    return fila.isEmpty;
  }
}
