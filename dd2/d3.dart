void main() {
  final musica = Musica(
    'Bohemian rhapsody',
    'queen',
    'a night at the opera',
    354,
  );
  final biblioteca = Biblioteca();
  biblioteca.adicionarMusica(
    Musica('Noite estrelada', 'Lucas andrade', 'Céu de verão', 245),
  );
  biblioteca.adicionarMusica(musica);
  biblioteca.imprimirMusicas();
  print("Quantidade de músicas: ${biblioteca.quantidadeDeMusicas()}");
  print("Tempo total em horas: ${biblioteca.totalHoras().toStringAsFixed(2)}");
}

class Musica {
  String titulo;
  String artista;
  String album;
  int duracaoSeg;

  Musica(this.titulo, this.artista, this.album, this.duracaoSeg);

  @override
  String toString() {
    return 'Titulo: $titulo, Artista: $artista, Albúm: $album, Duração: $duracaoSeg segundos';
  }
}

class Biblioteca {
  List<Musica> musicas = [];
  void adicionarMusica(Musica musica) {
    musicas.add(musica);
  }

  void imprimirMusicas() {
    for (var musica in musicas) {
      print(musica);
    }
  }

  int quantidadeDeMusicas() {
    return musicas.length;
  }

  double totalHoras() {
    int totalSegundos = 0;
    for (var musica in musicas) {
      totalSegundos += musica.duracaoSeg;
    }
    double horas = totalSegundos / 3600;
    return horas;
  }

  Musica? buscarPorTitulo(String titulo) {
    for (var musica in musicas) {
      if (musica.titulo == titulo) {
        return musica;
      }
    }
    return null;
  }

  List<Musica> buscarPorArtista(String artista) {
    List<Musica> resultado = [];

    for (var musica in musicas) {
      if (musica.artista == artista) {
        resultado.add(musica);
      }
    }
    return resultado;
  }

  List<Musica> buscarPorAlbum(String album) {
    List<Musica> resultado = [];

    for (var musica in musicas) {
      if (musica.album == album) {
        resultado.add(musica);
      }
    }
    return resultado;
  }
}
