import 'dart:math';

void main() {
  List<String> nomes = [
    'Ana',
    'Francisco',
    'Joao',
    'Pedro',
    'Gabriel',
    'Rafaela',
    'Marcio',
    'Jose',
    'Carlos',
    'Patricia',
    'Helena',
    'Camila',
    'Mateus',
    'Gabriel',
    'Maria',
    'Samuel',
    'Karina',
    'Antonio',
    'Daniel',
    'Joel',
    'Cristiana',
    'Sebastião',
    'Paula',
  ];

  List<String> sobrenomes = [
    'Silva',
    'Ferreira',
    'Almeida',
    'Azevedo',
    'Braga',
    'Barros',
    'Campos',
    'Cardoso',
    'Teixeira',
    'Costa',
    'Santos',
    'Rodrigues',
    'Souza',
    'Alves',
    'Pereira',
    'Lima',
    'Gomes',
    'Ribeiro',
    'Carvalho',
    'Lopes',
    'Barbosa',
  ];

  final random = Random();

  int nome = random.nextInt(nomes.length) - 1;
  int sobrenome = random.nextInt(sobrenomes.length) - 1;

  String name = nomes[nome];
  String sobre = sobrenomes[sobrenome];

  print("Nome: $name $sobre");
}
