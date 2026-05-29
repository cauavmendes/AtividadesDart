void main() {
  List<Map<String, dynamic>> pessoas = [
    {'nome': 'Nelson', 'idade': null},
    {'nome': 'Jane', 'idade': null},
    {'nome': 'Jack', 'idade': 16},
    {'nome': 'Rupert', 'idade': 37},
    {'nome': 'Andy', 'idade': 13},
    {'nome': 'Kim', 'idade': 27},
    {'nome': 'Robert', 'idade': 31},
  ];
  for (var pessoa in pessoas) {
    print("${pessoa['nome']}\t${pessoa['idade'] ?? 'Idade não informada'}");
  }
}
