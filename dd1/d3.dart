void main() {
  paragrafo(
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.",
  );
}

void paragrafo(String texto) {
  print("paragrafo: $texto");
  int quantidadeDePalavras = texto.trim().split(RegExp(r'\s')).length;
  print("Numero de palavras: $quantidadeDePalavras");
  int tamanhoTexto = texto.length;
  print("Tamanho do texto: $tamanhoTexto");
  int numeroFrases = texto
      .split(RegExp(r'[.!?]'))
      .where((frase) => frase.trim().isNotEmpty)
      .length;
  print("Numero de frases: $numeroFrases");
  int numeroVogais = RegExp(r'[aeiouAEIOU]').allMatches(texto).length;
  print("Numero de vogais: $numeroVogais");
  var consoantes = RegExp(
    r'[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]',
  ).allMatches(texto).map((m) => m.group(0)!.toLowerCase()).toSet().toList();
  consoantes.sort();
  print("Consoantes encontradas: $consoantes");
}
