Quais cuidados devo ter ao criar funções em dart?

Use nomes claros nas funções
Faça cada função ter apenas uma responsabilidade
Evite funções muito grandes
Defina tipos de parâmetros e retorno
Prefira funções reutilizáveis
Use parâmetros nomeados quando necessário
Evite muitos parâmetros
Trate erros com try/catch
Use async/await corretamente
Evite duplicação de código
Retorne valores úteis em vez de apenas imprimir
Documente funções importantes

Posso chamar minha função dentro dela mesma?

Sim. Isso se chama recursão.

Uma função recursiva é uma função que chama ela mesma para resolver um problema em partes menores.

Exemplo em Dart:

void contar(int numero) {
print(numero);

if (numero > 0) {
contar(numero - 1);
}
}

void main() {
contar(5);
}

Saída:

5
4
3
2
1
0

Tecnicamente, sim — mas na prática o limite costuma ser muito alto e raramente é o problema principal.

No Dart, você pode criar funções com muitos parâmetros, porém isso geralmente é considerado uma má prática porque:

dificulta leitura
aumenta chance de erro
torna manutenção mais complicada
dificulta lembrar a ordem dos argumentos

Exemplo ruim:

void criarUsuario(
String nome,
int idade,
String email,
String telefone,
String cpf,
String endereco,
bool ativo,
) {}

// é bom saber as más práticas e boas práticas na hora de produzir o código para facilitar na leitura e entendimento

É recomendado usar de dynamic nos parâmetros de uma função?

Na maioria dos casos, não.

Usar dynamic remove a verificação de tipo do Dart e deixa o código mais propenso a erros em tempo de execução.

Quando usar os operadores de valores opcionais e valores requeridos em uma função dart?

Em Dart, você usa parâmetros opcionais e required principalmente em parâmetros nomeados ({}).

Use required quando:
o dado é essencial
a função não faz sentido sem ele
você quer evitar esquecimentos

Exemplo:

void login({
required String email,
required String senha,
}) {}
Use opcional quando:
existe valor padrão
o dado é complementar
a função consegue funcionar sem ele

Exemplo:

void mostrarMensagem({
String texto = "Olá",
}) {
print(texto);
}

O que são parâmetros nomeados em uma função?

Parâmetros nomeados são parâmetros passados pelo nome, e não apenas pela posição.

Em Dart, eles ficam entre {} na função.

Exemplo:

void criarUsuario({
required String nome,
required int idade,
}) {
print(nome);
print(idade);
}

Chamada:

criarUsuario(
nome: "Cauã",
idade: 20,
);

Quais métodos existem para variáveis do tipo Function em dart?

Function em Dart representa funções como objetos.

Métodos/propriedades mais usados:

call() → executa a função
runtimeType → mostra o tipo
hashCode → identificador do objeto
toString() → representação textual

Exemplo:

Function ola = () => print("Oi");

ola.call();

Na prática, o mais importante é que funções podem:

ser armazenadas em variáveis
passadas como parâmetro
retornadas por outras funções

Prefira tipar a função corretamente ao invés de usar Function puro:

void executar(void Function() acao) {
acao();
}

Qual a diferença entre chamar minha função chamado olaMundo das seguintes formas “olaMundo” e “olaMundo()”.

A diferença é que:

olaMundo → referência da função
olaMundo() → execução da função

Exemplo:

void olaMundo() {
print("Olá mundo");
}
Sem parênteses
print(olaMundo);

Aqui você está apenas apontando para a função, sem executá-la.

Isso é útil para callbacks:

botao(onPressed: olaMundo);
Com parênteses
olaMundo();

Aqui a função é executada.

Saída:

Olá mundo
