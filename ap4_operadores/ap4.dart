void main() {
  final valorOriginalDoProduto = 10.0;
  final valorComDesconto = 7.0;

  print(
    'O produto custava $valorOriginalDoProduto reais '
    'e foi vendido por $valorComDesconto reais.',
  );

  final desconto = porcentagemDesconto(
    valorOriginalDoProduto,
    valorComDesconto,
  );

  print('O desconto dado foi $desconto%.');
}

int porcentagemDesconto(double valorOriginal, double valorComDesconto) {
  final percentual = (valorComDesconto * 100) ~/ valorOriginal;

  return 100 - percentual;
}
