import 'dart:math';

void main () {
  final random = Random();
  final numero = random.nextInt(901) + 100;
  final soma = numerosPares(numero);
  print("A soma dos números pares entre 0 e $numero é: $soma");
}

int numerosPares(int limite) {
  var soma = 0;
  for (var numero = 0; numero <= limite; numero++) {
    if (numero.isEven) {
      soma += numero;
    }
  }
  return soma;
}