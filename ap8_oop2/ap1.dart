import 'dart:math';

void main() {
  final random = Random();
  final genero = random.nextInt(GeneroMusical.values.length);
  var sorteado = GeneroMusical.values[genero];
  print("Meu gênero musical preferido é: ${sorteado.name}.");
}

enum GeneroMusical {
  rock,
  pop,
  funk,
  eletronica,
  pagode,
  eletrofunk,
  sertanejo,
}
