O que acontece se eu comparar valores de tipos diferentes usando operadores relacionais em dart?

Em Dart, operadores relacionais (>, <, >=, <=) só funcionam entre tipos compatíveis.

10 > 5.5 // funciona
10 > "5" // erro

Comparar tipos incompatíveis causa erro em execução.

Já o == pode comparar tipos diferentes sem erro:

10 == "10" // false

Para evitar erros, converta os valores antes da comparação:

int.parse("5")

Qual a diferença entre os operadores de divisão '/' e '~/?

Em Dart:

/ faz divisão normal e retorna double.
~/ faz divisão inteira e retorna apenas a parte inteira.

Exemplo:

print(10 / 3); // 3.3333333333333335
print(10 ~/ 3); // 3

O ~/ descarta as casas decimais.

Como verifico se uma variável é de um determinado tipo em dart?

Em Dart, você usa o operador is.

Exemplo:

var valor = 10;

print(valor is int); // true
print(valor is String); // false

Para verificar se não é de um tipo, use is!:

print(valor is! String); // true

Qual a função do operador '?' em testes de tipo?

O ? em tipos indica que a variável pode receber null.

Exemplo:

int? idade;

Aqui, idade pode ser um int ou null.

Em testes de tipo, isso afeta verificações:

int? numero = null;

print(numero is int); // false
print(numero is int?); // true
int → aceita apenas números inteiros.
int? → aceita int ou null.

Quando usar os operadores de valores opcionais e valores requeridos em uma função dart?

Use:

? para parâmetros opcionais que podem ser null.
required para parâmetros nomeados obrigatórios.

Exemplo:

void cadastrar({
required String nome,
int? idade,
}) {
print(nome);
print(idade);
}
nome é obrigatório.
idade é opcional e pode ser null.

Chamada:

cadastrar(nome: "Cauã");

Quais são os operadores de atribuição compostos e como eles funcionam?

Os operadores de atribuição compostos servem para modificar e atribuir valor à variável na mesma linha.

Principais operadores:

+= // soma
-= // subtração
\*= // multiplicação
/= // divisão
~/= // divisão inteira
%= // resto da divisão

Exemplo:

int x = 10;

x += 5; // x = x + 5
print(x); // 15

x _= 2; // x = x _ 2
print(x); // 30

Eles são uma forma reduzida de escrever operações com atribuição.

Como uso os operadores '&&' e '||' para combinar condições?

&& significa E → todas as condições precisam ser verdadeiras.
|| significa OU → pelo menos uma precisa ser verdadeira.

Exemplo com &&:

int idade = 20;

print(idade >= 18 && idade <= 30); // true

Exemplo com ||:

bool temDinheiro = false;
bool temCartao = true;

print(temDinheiro || temCartao); // true

Você também pode combinar os dois:

print((10 > 5 && 8 > 3) || false); // true

Qual a diferença entre usar 'if-else' e expressões condicionais?

if-else é usado para executar blocos de código.
Expressão condicional (? :) é usada para retornar um valor de forma curta.
if-else
int idade = 18;

if (idade >= 18) {
print("Maior de idade");
} else {
print("Menor de idade");
}
Expressão condicional
int idade = 18;

String resultado =
idade >= 18 ? "Maior de idade" : "Menor de idade";

print(resultado);

A expressão condicional é mais compacta para decisões simples.

Em quais situações a notação em cascata pode tornar o código mais legível?

A notação em cascata (..) torna o código mais legível quando você precisa fazer várias operações no mesmo objeto.

Sem cascata:

var pessoa = Pessoa();

pessoa.nome = "Cauã";
pessoa.idade = 20;
pessoa.mostrar();

Com cascata:

var pessoa = Pessoa()
..nome = "Cauã"
..idade = 20
..mostrar();

Ela é útil para:

configurar objetos;
chamar vários métodos seguidos;
evitar repetir o nome da variável várias vezes.

Isso deixa o código mais curto e organizado.

Qual a diferença entre usar a notação em cascata e chamar métodos separadamente?

A diferença é que a notação em cascata (..) evita repetir o objeto várias vezes.

Métodos separados
carro.ligar();
carro.acelerar();
carro.frear();
Com cascata
carro
..ligar()
..acelerar()
..frear();

Os dois fazem a mesma coisa, mas a cascata deixa o código mais compacto e organizado quando várias operações são feitas no mesmo objeto.

Como a notação em cascata pode ser usada para modificar um objeto após realizar testes de tipo?

Você pode usar is para verificar o tipo do objeto e depois usar a notação em cascata (..) para modificar esse objeto.

Exemplo:

dynamic pessoa = Pessoa();

if (pessoa is Pessoa) {
pessoa
..nome = "Cauã"
..idade = 20
..mostrar();
}
is Pessoa verifica o tipo.
.. permite alterar várias propriedades do mesmo objeto de forma organizada.
