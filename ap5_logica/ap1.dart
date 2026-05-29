void main() {
  final impar = numerosImpares(10);

  for (var numero in impar) {
    print("Impar: $numero");
  }
}

List<int> numerosImpares(int quantidade) {
  List<int> numeros = [];
  var contador = 0;
  while (contador < quantidade) {
    if (contador.isOdd) {
      numeros.add(contador);
    }
    contador++;
  }
  return numeros;
}
