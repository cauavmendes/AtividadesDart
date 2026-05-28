void main() {
  final listaNomes = [
    "Joao",
    "Maria",
    "Pedro",
    "Maria",
    "Ana",
    "Joao",
    "Maria",
    "Fernanda",
    "Carlos",
    "Maria"
  ];

  final nome = 'Joao';
  final quantidade = contarNome(listaNomes, nome);

  if (quantidade == 1) {
    print("O nome '$nome' aparece $quantidade vez na lista.");
  } else if (quantidade > 1) {
    print("O nome '$nome' aparece $quantidade vezes na lista.");  
  } else {
    print("O nome '$nome' não aparece na lista.");
  }
  
}

int contarNome(List<String>listaNomes, String nome){
    int quantidade = 0;
    for (var nomeLista in listaNomes) {
      if (nomeLista == nome) {
        quantidade++;
      }
    }
    return quantidade;
  }