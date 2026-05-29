void main() {
  funcao();
}

void funcao() {
  int numeroPar = 10;

  try {
    if (numeroPar.isEven) {
      print("Entrada correta, você inseriu um número par.");
    } else {
      throw Exception("Entrada inválida. Insira apenas números pares.");
    }
  } catch (e) {
    print(e);
  }
}
