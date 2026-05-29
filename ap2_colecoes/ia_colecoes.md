Quais as boas práticas no uso de listas em dart?

Em Dart, listas (List) são muito usadas em coleções de dados, principalmente no desenvolvimento com Flutter. Algumas boas práticas ajudam a deixar o código mais seguro, legível e performático.

Que práticas posso adotar para trazer uma melhor performance ao usar listas em dart?

1. Sempre tipar a lista

Evite listas dinâmicas sem tipo definido.

❌ Evite:

List lista = [];

✅ Prefira:

List<String> nomes = [];
List<int> idades = [];

Isso evita erros de tipo em tempo de execução.

2. Use final quando a referência não mudar

Se a variável da lista não será reatribuída, use final.

✅:

final List<String> frutas = ['Maçã', 'Banana'];

Você ainda pode adicionar/remover itens:

frutas.add('Uva');

O final impede apenas:

frutas = []; 3. Use const para listas imutáveis

Quando a lista nunca mudará:

✅:

const List<String> cores = ['azul', 'verde', 'vermelho'];

Isso melhora performance e evita alterações acidentais.

❌ Isso dará erro:

cores.add('preto'); 4. Prefira .map(), .where() e .fold() ao invés de loops manuais

Código mais declarativo e legível.

❌:

List<String> maiores = [];

for (var nome in nomes) {
if (nome.length > 5) {
maiores.add(nome);
}
}

✅:

final maiores =
nomes.where((nome) => nome.length > 5).toList(); 5. Evite modificar listas durante iteração

❌:

for (var item in lista) {
lista.remove(item);
}

Isso pode gerar comportamento inesperado.

✅:

lista.removeWhere((item) => item.isEmpty); 6. Use spread operator (...) para juntar listas

Mais limpo e moderno.

✅:

final listaFinal = [...lista1, ...lista2];

Também existe o null-aware spread:

final lista = [...?nomes]; 7. Prefira listas imutáveis quando possível

Em projetos maiores, evitar mutações reduz bugs.

✅:

final numeros = List.unmodifiable([1, 2, 3]); 8. Use .isEmpty e .isNotEmpty

Mais legível que comparar tamanho.

❌:

if (lista.length == 0)

✅:

if (lista.isEmpty) 9. Cuidado com listas aninhadas mutáveis

❌:

final matriz = List.filled(3, []);

Isso reutiliza a mesma lista interna.

✅:

final matriz = List.generate(3, (\_) => []); 10. Use coleções adequadas

Nem tudo deve ser List.

Set → evitar duplicados
Map → chave/valor
Queue → fila
Iterable → processamento lazy

Exemplo:

final Set<String> emails = {}; 11. Evite acessar índices sem validação

❌:

print(lista[10]);

Pode lançar exceção.

✅:

if (lista.length > 10) {
print(lista[10]);
} 12. Use List.generate() para criar listas dinâmicas

✅:

final numeros = List.generate(5, (index) => index \* 2);

Resultado:

[0, 2, 4, 6, 8] 13. Prefira for-in quando não precisar do índice

✅:

for (var nome in nomes) {
print(nome);
}

Use índice apenas quando necessário.

14. Use asMap() quando precisar do índice

✅:

for (var entry in nomes.asMap().entries) {
print('${entry.key}: ${entry.value}');
} 15. Evite listas gigantes em memória sem necessidade

Para muitos dados:

paginação
streams
lazy loading
iterables

Isso é importante principalmente em apps Flutter.

Exemplo de código organizado
void main() {
final List<String> nomes = [
'Ana',
'Carlos',
'Fernanda',
'João',
];

final nomesGrandes =
nomes.where((nome) => nome.length > 4).toList();

print(nomesGrandes);
}

O que evitar ao usar listas em Dart
Evitar List sem tipagem:
List lista = [];
Evitar usar dynamic sem necessidade.
Não modificar a lista durante um for-in:
for (var item in lista) {
lista.remove(item);
}
Não acessar índices sem validar:
lista[10];
Evitar usar length == 0:
if (lista.length == 0)

Prefira:

if (lista.isEmpty)
Evitar listas mutáveis quando os dados não devem mudar.
Não usar List.filled() com listas internas:
List.filled(3, []);
Evitar loops manuais quando .map(), .where() ou .forEach() resolvem melhor.
Evitar listas enormes em memória sem necessidade.

Quando usar List

Use List quando:

a ordem importa
os itens possuem posição/índice
pode haver valores repetidos
você quer percorrer elementos sequencialmente

Exemplo:

final frutas = ['Maçã', 'Banana', 'Uva'];

Acesso por índice:

print(frutas[0]);

Quando usar Map

Use Map quando:

existe relação chave → valor
você precisa buscar algo por nome/chave
cada chave deve ser única

Exemplo:

final usuario = {
'nome': 'Cauã',
'idade': 19,
};

Acesso por chave:

print(usuario['nome']);

// Interessante saber disso pois estava um pouco em dúvida de quando utilizar cada um deles

boas práticas com Map em Dart
Sempre tipar o mapa:
Map<String, int> dados = {};
Usar final quando possível.
Manter o mesmo tipo de chave e valor.
Validar chaves com containsKey().
Evitar dynamic sem necessidade.
Preferir classes para dados complexos.
Usar const para mapas fixos.
Validar valores antes de acessar propriedades:
if (usuario['nome'] != null)
Usar .forEach() para percorrer mapas.

Métodos úteis para List
add()
addAll()
remove()
removeAt()
contains()
indexOf()
sort()
where()
map()
forEach()
clear()
Métodos úteis para Set
add()
addAll()
remove()
contains()
union()
intersection()
difference()
clear()
Diferença principal
List → permite repetidos e possui índice.
Set → não permite valores duplicados.

Cuidados ao usar Set em Dart
Set não permite valores duplicados.
{'Ana', 'Ana'}
A ordem dos elementos não deve ser considerada garantida.
Não acessar elementos por índice:
set[0];

Set não funciona como List.

Evitar modificar o Set durante iteração.
Sempre tipar o conjunto:
Set<String> nomes = {};
Usar final quando possível:
final Set<int> numeros = {};
Cuidado com objetos personalizados:
Para evitar duplicados corretamente, pode ser necessário sobrescrever == e hashCode.

Traga a documentação do método elementaAtOrNull.

O método elementAtOrNull pertence às extensões de Iterable no Dart e serve para acessar um elemento pelo índice sem gerar erro caso o índice não exista.

Sintaxe
iterable.elementAtOrNull(index)
Funcionamento
Retorna o elemento no índice informado.
Retorna null se o índice estiver fora do limite da coleção.
