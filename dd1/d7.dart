void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  int somaFor = 0;
  int somaWhile = 0;
  int i = 0;
  int somaRecursao = somarRecursivo(numeros, 0);
  for (int i = 0; i < numeros.length; i++) {
    somaFor += numeros[i];
  }

  while (i < numeros.length) {
    somaWhile += numeros[i];
    i++;
  }

  int somaLista = numeros.reduce((acumulador, elemento) {
    return acumulador + elemento;
  });
  print("for: $somaFor");
  print("While: $somaWhile");
  print("recursão: $somaRecursao");
  print("Lista: $somaLista");
}

int somarRecursivo(List<int> numeros, int indice) {
  if (indice >= numeros.length) {
    return 0;
  }
  return numeros[indice] + somarRecursivo(numeros, indice + 1);
}
