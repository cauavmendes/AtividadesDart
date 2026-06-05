Future<void> main() async {
  print('Iniciando lançamento');
  for (var i = 5; i >= 1; i--) {
    print(i);
    await Future.delayed(Duration(seconds: 1));
  }

  print('Foguete lançado!');
}

