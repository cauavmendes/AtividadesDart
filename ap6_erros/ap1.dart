void main() {
  funcao("9999");
}

void funcao(String valor) {
  try {
    int numero = int.parse(valor);
    print("Numero digitado: $numero");
  } catch (e) {
    print("Entrada inválida. Digite apenas números inteiros.");
  }
}
