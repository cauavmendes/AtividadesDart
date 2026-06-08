void main() {
  var dataAtual = DateTime.now();
  var dataCalculada = dataAtual;
  int diasUteis = 0;

  while (diasUteis < 18) {
    dataCalculada = dataCalculada.add(Duration(days: 1));
    if (dataCalculada.weekday != 6 && dataCalculada.weekday != 7) {
      diasUteis++;
    }
  }
  print(
    "Data atual: ${dataAtual.day.toString().padLeft(2, '0')}/${dataAtual.month.toString().padLeft(2, '0')}/${dataAtual.year}",
  );
  print(
    "Data calculada: ${dataCalculada.day.toString().padLeft(2, '0')}/${dataCalculada.month.toString().padLeft(2, '0')}/${dataCalculada.year}",
  );
}
