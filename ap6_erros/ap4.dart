void main() {
  String _nome = "";
  try {
    try {
      final arquivo = ArquivoTexto(_nome);
      arquivo.abrir();
    } catch (e) {
      print("Entrada inválida. Digite um nome válido.");
      rethrow;
    }
  } catch (e) {
    print(e);
  }
  print("Fim do programa.");
}

abstract interface class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {
  String _nome;

  ArquivoTexto(this._nome);
  @override
  void abrir() {
    try {
      if (_nome.isEmpty) {
        throw Exception("O nome do arquivo não pode ser vazio.");
      }
      print("Abrindo arquivo de texto: $_nome");
    } catch (e) {
      throw Exception("Erro ao abrir o arquivo: $_nome");
    }
  }
}
