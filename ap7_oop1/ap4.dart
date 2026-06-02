import 'dart:math';

void main() {
  final random = Random();

  var pessoa = Pessoa('Cauã');

  int idadeAleatoria = random.nextInt(100) + 1;

  double alturaAleatoria = 1.0 + (Random().nextDouble() * 1.3);

  pessoa.idade = idadeAleatoria;
  pessoa.altura = alturaAleatoria;

  print(
    'Nome: ${pessoa.nome}\n'
    'Idade: ${pessoa.idade}\n'
    'ALtura: ${pessoa.altura.toStringAsFixed(2)}',
  );
}

class Pessoa {
  String _nome;
  int _idade = 0;
  double _altura = 0.0;

  Pessoa(this._nome);

  String get nome => _nome;
  int get idade => _idade;
  set idade(int novaIdade) {
    if (novaIdade >= 0) {
      _idade = novaIdade;
    }
  }

  double get altura => _altura;
  set altura(double novaAltura) {
    if (novaAltura >= 0) {
      _altura = novaAltura;
    }
  }
}
