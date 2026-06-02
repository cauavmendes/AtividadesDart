void main() {
  ContaBancaria conta = ContaBancaria('João', 2300.0);
  conta.depositar(1000.0);
  conta.sacar(500.0);
  print('Saldo atual: ${conta.saldo}');
}

class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    try {
      if (valor > saldo) {
        throw Exception('Saldo insuficiente');
      }
      saldo -= valor;
    } catch (e) {
      print(e);
    }
  }
}
