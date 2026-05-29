void main() {
  listaString();
}

void listaString() {
  List<String> lista = [
    "10",
    "2XXL7",
    "JOJ0",
    "99",
    "381",
    "AD44",
    "47",
    "2B",
    "123",
    "78",
  ];

  print(
    "Lista convertida: ${lista.map((item) => int.tryParse(item) ?? 0).join(", ")}",
  );
}
