Boas práticas ao declarar variáveis em Dart
Prefira final quando o valor não mudar:

```dart
final nome = 'Cauã';
```

Use const para valores constantes:

```dart
const pi = 3.14;
```

Use nomes claros e em camelCase:

```dart
String nomeCompleto;
```

Evite dynamic sem necessidade:

```dart
String nome = 'João';
```

Use tipos explícitos quando melhorar a leitura:

```dart
int idade = 19;
```

Use late apenas quando a variável será inicializada depois:

```dart
late String endereco;
```

Prefira variáveis não nulas:

```dart
String cidade = 'São Paulo';
```

Regra geral
final = valor não muda
const = constante fixa
var = tipo óbvio
late = inicialização futura
dynamic = evitar
O que evitar ao declarar variáveis em Dart
Evitar usar dynamic sem necessidade:

```dart
dynamic valor = 'texto';
```

Isso reduz a segurança de tipos.
Evitar nomes genéricos:

```dart
var x = 10;
var a = 'João';
```

Prefira:

```dart
int quantidadeProdutos = 10;
```

Evitar usar late sem precisar:

```dart
late String nome;
```

Se não inicializar depois, pode gerar:

```dart
LateInitializationError
```

Evitar usar var quando o tipo não estiver claro:

```dart
var resultado = buscarDados();
```

Melhor:

```dart
Future<String> resultado = buscarDados();
```

Evitar variáveis mutáveis sem necessidade:

```dart
String nome = 'Ana';
```

Prefira:

```dart
final String nome = 'Ana';
```

Evitar permitir null sem necessidade:

```dart
String? nome;
```

Use ? apenas quando o valor realmente puder ser nulo.
Cuidados com variáveis nulas em Dart
Use ? apenas quando o valor puder ser nulo:

```dart
String? telefone;
```

Verifique null antes de usar:

```dart
if (telefone != null) {
  print(telefone.length);
}
```

Evite usar ! sem certeza:

```dart
telefone!
```

Use ?? para valor padrão:

```dart
String nome = usuario ?? 'Visitante';
```

Prefira variáveis não nulas sempre que possível:

```dart
String cidade = 'São Paulo';
```

Inicialize valores obrigatórios corretamente:

```dart
Pessoa(this.nome);
```

Quando usar variáveis nulas (?)

Use quando a variável realmente pode não ter valor.

Exemplo:

telefone opcional
foto de perfil opcional
campo ainda não preenchido

```dart
String? telefone;
```

Aqui o null faz parte da lógica do sistema.

Quando usar late

Use quando a variável:

terá valor obrigatoriamente
mas será inicializada depois

Exemplo:

valor carregado no initState
dependência inicializada futuramente

```dart
late String nomeUsuario;
```

Depois:

```dart
nomeUsuario = 'Cauã';
```

Diferença principal

String? = valor pode ser nulo
late = String valor será definido depois
Exemplo prático

Variável nula:

```dart
String? fotoPerfil;
```

late:

```dart
late Database banco;
```

O banco não pode ser nulo, apenas será iniciado mais tarde.

Benefícios do late no Dart

O late permite declarar uma variável que será inicializada depois, mas que ainda será tratada como obrigatória (não nula).

1. Evita usar variáveis nulas desnecessariamente

Sem late:

```dart
String? nome;
```

Com late:

```dart
late String nome;
```

Você mantém a segurança do null safety sem precisar trabalhar com ?.

2. Permite inicialização tardia

Útil quando o valor só estará disponível depois.

Exemplo no Flutter:

```dart
late TextEditingController controller;
```

Inicializado depois:

```dart
controller = TextEditingController();
```

3. Melhora a organização do código

Você pode declarar atributos da classe antes mesmo de inicializá-los.

```dart
class Usuario {
  late String nome;
}
```

4. Evita inicializações desnecessárias

A variável só recebe valor quando realmente precisar.

```dart
late final String dados;
```

Isso pode ajudar desempenho e consumo de memória em alguns cenários.

5. Funciona bem com final

Você pode inicializar apenas uma vez futuramente:

```dart
late final String token;
```

Cuidados

Se usar antes de inicializar:

```dart
LateInitializationError
```

Por isso, use apenas quando tiver certeza de que a variável receberá valor antes do uso.

Diferença entre final e const no Dart

Os dois tornam a variável imutável, mas funcionam em momentos diferentes.

final

O valor é definido apenas uma vez, em tempo de execução (runtime).

```dart
final nome = 'Cauã';
```

Pode receber valores calculados durante a execução:

```dart
final horaAtual = DateTime.now();
```

const

O valor precisa ser conhecido em tempo de compilação (compile time).

```dart
const pi = 3.14;
```

Não aceita valores que só existem durante a execução:

```dart
const hora = DateTime.now(); // erro
```

Por que usar final e const no Dart?
Evitam alterações acidentais
Deixam o código mais organizado
Melhoram a leitura
Reduzem bugs
const ajuda na performance
Incentivam imutabilidade
Exemplo

```dart
final nome = 'Cauã';
const pi = 3.14;
int contador = 0;
```

Métodos comuns de String no Dart
Método Função
toUpperCase() = deixa maiúsculo
toLowerCase() = deixa minúsculo
trim() = remove espaços
split() = divide texto
contains() = verifica conteúdo
startsWith() = verifica início
endsWith() = verifica final
replaceAll() = substitui texto
substring() = pega parte da string
indexOf() = encontra posição
isEmpty = verifica se está vazia
isNotEmpty = verifica se não está vazia

Métodos e propriedades de variáveis int no Dart

| Método / Propriedade | Função                    |
| -------------------- | ------------------------- |
| `abs()`              | valor absoluto            |
| `isEven`             | verifica se é par         |
| `isOdd`              | verifica se é ímpar       |
| `sign`               | retorna sinal do número   |
| `compareTo()`        | compara números           |
| `clamp()`            | limita valor em intervalo |
| `remainder()`        | resto da divisão          |
| `toDouble()`         | converte para `double`    |
| `toString()`         | converte para texto       |
| `round()`            | arredonda                 |
| `floor()`            | arredonda para baixo      |
| `ceil()`             | arredonda para cima       |

Quando usar late no Dart

Use late quando a variável:

será inicializada depois
não pode ser nula

Quando usar final em Dart

Use final quando o valor:

será definido apenas uma vez
mas pode ser criado em tempo de execução

Exemplo:

```dart
final nome = 'Cauã';
```

Valor vindo do sistema:

```dart
final horaAtual = DateTime.now();
```

Quando usar const

Use const quando o valor:

nunca muda
já é conhecido em tempo de compilação

Exemplo:

```dart
const pi = 3.14;
const diasSemana = 7;
```

Muito usado no Flutter:

const Text('Olá');

// achei bons exemplos por que estava um pouco em dúvida ainda da diferença de final e const, mas analisando na prática foi melhor para meu entendimento

Cenários onde NÃO usar late no Dart

Regra prática

Não use late quando:

a variável puder ser nula
já puder iniciar com valor
houver risco de acesso antes da inicialização
estiver usando apenas para evitar erro do compilador

Exemplo do método split() em Dart

O split() divide uma string em partes usando um separador.

Exemplo:

```dart
String frutas = 'maçã,banana,uva';
List<String> listaFrutas = frutas.split(',');
print(listaFrutas);
```

Saída:

```dart
[maçã, banana, uva]
```
