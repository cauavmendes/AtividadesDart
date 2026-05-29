import 'dart:math';

void main() {
  final random = Random();

  for (var indice = 0; indice < 5; indice++) {
    final numeroAleatorio = random.nextInt(25) + 1;
    final letraCorrespondente = pegarLetra(numeroAleatorio);

    print('Numero $numeroAleatorio -> Letra $letraCorrespondente');
  }
}

String pegarLetra(int numero) {
  int valorASCIIletraA = 'A'.codeUnitAt(0);
  int codigoASCII = valorASCIIletraA + numero - 1;
  return String.fromCharCode(codigoASCII);
}
