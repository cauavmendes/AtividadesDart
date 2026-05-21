void main() {
  final estados = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguacu'],
    'SP': ['Sao Paulo', 'Guarulhos', 'Campinas'],
    'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda'],
  };

  print('Estados: ${estados.keys.join(' ; ')}');

  final santaCatarina = estados['SC']!;

  santaCatarina.sort();

  print('Cidades de SC: ${santaCatarina.join(' ; ')}');

  final sigla = [];

  for (var siglaEstado in estados.keys) {
    final cidadesDoEstado = estados[siglaEstado]!;

    for (var cidade in cidadesDoEstado) {
      sigla.add('$cidade - $siglaEstado');
    }
  }
  sigla.sort();

  for (var item in sigla) {
    print(item);
  }
}