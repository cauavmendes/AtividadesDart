void main() {
  Pessoa pessoa = Pessoa();

  pessoa.acelerando();
  pessoa.freando();
}

abstract class Carro {
  void acelerando();
}

abstract class Moto {
  void freando();
}

class Pessoa implements Carro, Moto {
  @override
  void acelerando() {
    print("A pessoa está acelerando o carro");
  }

  @override
  void freando() {
    print("A pessoa está freiando a moto");
  }
}
