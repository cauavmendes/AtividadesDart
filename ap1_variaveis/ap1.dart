void main() {
  String nome = "Cauã";
  String sobrenome = "Mendes";
  int idade = 19;
  // ignore: unused_local_variable
  bool ativo = true;
  double peso = 70.00;
  String? nacionalidade = null;
  
  print("Nome completo: $nome $sobrenome");

  if (idade >= 18) {
    print("Maior de idade: $idade");
  } else {
    print("Menor de idade: $idade");
  }

    if (ativo = true) {
      print("Ativo");
    } else {
      print("Inativo");
    }

    print("Peso: ${peso.toStringAsFixed(2)}");

    if (nacionalidade != null) {
      print("Nacionalidade: $nacionalidade");
    } else {
      print("Nacionalidade: não informada");
    }
}