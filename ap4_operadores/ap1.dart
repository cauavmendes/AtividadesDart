void main() {
  List<int> anos = [2024, 2023, 1900, 2000];

  for (int ano in anos) {
    if (ehAnoBissexto(ano)) {
      print("$ano é um ano bissexto.");
    } else {
      print("$ano não é um ano bissexto.");
    }
  }
}

bool ehAnoBissexto(int ano) {
 return (ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0); 
}