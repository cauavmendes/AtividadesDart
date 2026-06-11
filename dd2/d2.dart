import 'dart:math';

void main() {
  final pessoa = Pessoa();
  List<Fornecedor> fornecedores = [
    FornecedorDeBebidas(),
    FornecedorDeBolos(),
    FornecedorDePetiscos(),
    FornecedorDeSaladas(),
    FornecedorDeSanduiches(),
    FornecedorUltraCalorico(),
  ];

  final random = Random();
  while (pessoa.precisaComer) {
    final fornecedorAleatorio =
        fornecedores[random.nextInt(fornecedores.length)];

    pessoa.refeicao(fornecedorAleatorio);
  }
  pessoa.informacoes();
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

abstract class Fornecedor {
  Produto fornecer();
}

class FornecedorDeSanduiches implements Fornecedor {
  final _random = Random();
  final _sanduichesDisponiveis = <Produto>[
    Produto('Sanduiche de queijo e presunto', 350),
    Produto('Sanduiche de atum', 400),
    Produto('Pao com manteiga', 200),
    Produto('X-burguer', 550),
  ];

  Produto fornecer() {
    return _sanduichesDisponiveis[_random.nextInt(
      _sanduichesDisponiveis.length,
    )];
  }
}

class FornecedorDeBolos implements Fornecedor {
  final _random = Random();
  final _bolosDisponiveis = <Produto>[
    Produto('Bolo de chocolate', 350),
    Produto('Bolo de cenoura', 320),
    Produto('Bolo de fubá', 250),
    Produto('Bolo de laranja', 270),
  ];

  Produto fornecer() {
    return _bolosDisponiveis[_random.nextInt(_bolosDisponiveis.length)];
  }
}

class FornecedorDeSaladas implements Fornecedor {
  final _random = Random();
  final _saladasDisponiveis = <Produto>[
    Produto('Salada de alface e tomate', 30),
    Produto('Salada de cenoura ralada', 40),
    Produto('Salada de repolho', 25),
    Produto('Salada caesar', 250),
  ];

  Produto fornecer() {
    return _saladasDisponiveis[_random.nextInt(_saladasDisponiveis.length)];
  }
}

class FornecedorDePetiscos implements Fornecedor {
  final _random = Random();
  final _petiscosDisponiveis = <Produto>[
    Produto('Coxinha', 280),
    Produto('Pao de queijo', 150),
    Produto('Batata frita', 100),
  ];

  Produto fornecer() {
    return _petiscosDisponiveis[_random.nextInt(_petiscosDisponiveis.length)];
  }
}

class FornecedorUltraCalorico implements Fornecedor {
  final _random = Random();
  final _ultraCaloricosDisponiveis = <Produto>[
    Produto('Pasta de amendoim', 580),
    Produto('Azeite de oliva', 884),
    Produto('Nozes', 700),
    Produto('Chocolate meio amargo', 550),
  ];

  Produto fornecer() {
    return _ultraCaloricosDisponiveis[_random.nextInt(
      _ultraCaloricosDisponiveis.length,
    )];
  }
}

class FornecedorDeBebidas implements Fornecedor {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Cafe', 60),
    Produto('Cha', 35),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

enum StatusCalorico { deficitExtremo, deficit, satisfeito, excesso }

class Pessoa {
  int _refeicoesRealizadas = 0;
  int _caloriasConsumidas;

  Pessoa() : _caloriasConsumidas = Random().nextInt(2001);

  static StatusCalorico _verificar(int calorias) {
    if (calorias <= 500) {
      return StatusCalorico.deficitExtremo;
    } else if (calorias <= 1800) {
      return StatusCalorico.deficit;
    } else if (calorias <= 2500) {
      return StatusCalorico.satisfeito;
    } else {
      return StatusCalorico.excesso;
    }
  }

  StatusCalorico get status {
    return _verificar(_caloriasConsumidas);
  }

  bool get precisaComer {
    return status == StatusCalorico.deficitExtremo ||
        status == StatusCalorico.deficit;
  }

  /// Consome um produto e aumenta o número de calorias
  void refeicao(Fornecedor fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');
    _refeicoesRealizadas++;
    _caloriasConsumidas += produto.calorias;
  }

  void informacoes() {
    print("Calorias atuais: $_caloriasConsumidas");
    print("Status: ${status.name}");
    print("Número de refeições: $_refeicoesRealizadas");
  }
}
