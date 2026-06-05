Future<void> main() async {
  await buscarDados();
}

Future<void> buscarDados() async {
  print('Iniciando a busca...');
  await Future.delayed(Duration(seconds: 1));

  print('Consultando servidor...');
  await Future.delayed(Duration(seconds: 1));

  print('Busca concluída.');
}
