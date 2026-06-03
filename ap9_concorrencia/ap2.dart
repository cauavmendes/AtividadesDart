Future<void> main() async {
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];

  await baixarImagens(urls);
}

Future<void> baixarImagens(List<String> urls) async {
  print("Baixando imagens...");

  final downloads = urls.map((url) async {
    await Future.delayed(Duration(seconds: 2));
    print('Imagem $url baixada com sucesso');
  });
  await Future.wait(downloads);
  print("Download concluído!");
}
