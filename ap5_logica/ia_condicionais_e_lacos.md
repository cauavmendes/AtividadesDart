Qual a diferença entre usar 'if', 'else if' e 'else'?

if: executa um bloco se a condição for verdadeira.
else if: testa outra condição caso o if anterior seja falso.
else: executa quando nenhuma das condições anteriores é verdadeira.

Exemplo:

if (nota >= 7) {
  print("Aprovado");
} else if (nota >= 5) {
  print("Recuperação");
} else {
  print("Reprovado");
}

O Dart verifica as condições de cima para baixo e executa apenas o primeiro bloco cuja condição seja verdadeira.

Quais cuidados tenho que ter com “if” e “else”?  

Alguns cuidados importantes ao usar if e else em Dart:

A condição deve resultar em true ou false.

if (idade >= 18) {
  print("Maior de idade");
}

Use == para comparar valores, não =.

if (numero == 10) { // correto
}

A ordem das condições importa. Coloque as condições mais específicas antes das mais gerais.

if (nota >= 9) {
  print("Excelente");
} else if (nota >= 7) {
  print("Aprovado");
}

Use chaves {} para deixar o código mais claro e evitar erros futuros.

if (ativo) {
  print("Usuário ativo");
}
Evite muitos if aninhados, pois dificultam a leitura do código.

Qual a importância da palavra-chave 'break' em um 'switch case'? 

A palavra-chave break é usada para encerrar a execução de um case dentro de um switch.

Sem ela, o programa poderia continuar executando outros casos (em linguagens que permitem isso). Em Dart, cada case deve terminar de alguma forma, normalmente com break, return ou throw.

Exemplo:

var dia = 2;

switch (dia) {
  case 1:
    print("Domingo");
    break;
  case 2:
    print("Segunda-feira");
    break;
  default:
    print("Dia inválido");
}

Saída:

Segunda-feira
Resumo

O break serve para parar a execução do switch após encontrar o caso correto, evitando que o programa continue avaliando outros casos.

Quando devo usar 'switch' em vez de uma série de 'if else'? 

Use switch quando você precisa comparar uma mesma variável com vários valores específicos.

Exemplo:

switch (dia) {
  case 1:
    print("Domingo");
    break;
  case 2:
    print("Segunda");
    break;
  case 3:
    print("Terça");
    break;
}

Use if else quando as condições forem mais complexas, envolvendo comparações, intervalos ou múltiplas expressões.

Exemplo:

if (nota >= 9) {
  print("Excelente");
} else if (nota >= 7) {
  print("Aprovado");
} else {
  print("Reprovado");
}
Resumo
switch → vários valores possíveis para a mesma variável.
if else → condições mais complexas (>, <, >=, &&, ||, etc.).

Qual a diferença entre um loop 'for' tradicional e um loop 'for...in'? 

for tradicional

É usado quando você precisa controlar o índice, definir início, fim e incremento.

for (var i = 0; i < 5; i++) {
  print(i);
}

Saída:

0
1
2
3
4
for...in

É usado para percorrer diretamente os elementos de uma coleção (lista, conjunto, etc.), sem precisar de índice.

var nomes = ["Ana", "João", "Maria"];

for (var nome in nomes) {
  print(nome);
}

Saída:

Ana
João
Maria
Resumo
for tradicional	for...in
Usa índice (i)	Usa os elementos diretamente
Mais controle sobre a repetição	Código mais simples para percorrer coleções
Ideal quando precisa da posição do elemento	Ideal quando só precisa do valor

Regra prática: use for...in para percorrer listas e use for tradicional quando precisar do índice ou de um controle mais específico da repetição.

Como posso repetir um bloco de código um número específico de vezes? 

Você pode usar um loop for, que é ideal quando sabe exatamente quantas vezes deseja repetir um bloco de código.

Exemplo: repetir 5 vezes.

for (var i = 0; i < 5; i++) {
  print("Olá!");
}

Saída:

Olá!
Olá!
Olá!
Olá!
Olá!

Nesse exemplo:

i = 0 → começa em 0.
i < 5 → continua enquanto i for menor que 5.
i++ → aumenta i em 1 a cada repetição.

Assim, o bloco é executado exatamente 5 vezes.

Quais são os riscos de usar um loop 'while' sem uma condição de parada adequada?

O principal risco é criar um loop infinito, ou seja, um laço que nunca termina porque a condição permanece verdadeira.

Exemplo:

while (true) {
  print("Executando...");
}

Problemas que isso pode causar:

❌ Travamento do programa.
❌ Uso excessivo de CPU e memória.
❌ Aplicação pode ficar sem responder.
❌ Necessidade de encerrar o programa manualmente.

Exemplo correto:

var contador = 0;

while (contador < 5) {
  print(contador);
  contador++;
}

Aqui, contador++ garante que a condição eventualmente se torne falsa e o loop termine.

Resumo: sempre certifique-se de que a condição do while possa se tornar falsa em algum momento, caso contrário você corre o risco de criar um loop infinito.

Quando é adequado usar for e usar while? 

Use for quando você sabe quantas vezes o código deve repetir.
for (var i = 0; i < 10; i++) {
  print(i);
}
Use while quando você não sabe exatamente quantas repetições serão necessárias e quer repetir enquanto uma condição for verdadeira.
var senhaCorreta = false;

while (!senhaCorreta) {
  // pedir senha
}
Resumo
for → número de repetições conhecido.
while → repete até que uma condição deixe de ser verdadeira.

Qual a diferença entre os comandos 'break' e 'continue'? 

Os dois são usados para controlar loops, mas têm funções diferentes:

break → encerra o loop imediatamente.
continue → pula a iteração atual e vai para a próxima.
Exemplo com break
for (var i = 1; i <= 5; i++) {
  if (i == 3) {
    break;
  }
  print(i);
}

Saída:

1
2

Quando i vale 3, o loop é encerrado.

Exemplo com continue
for (var i = 1; i <= 5; i++) {
  if (i == 3) {
    continue;
  }
  print(i);
}

Saída:

1
2
4
5

Quando i vale 3, essa iteração é ignorada, mas o loop continua.

Resumo
Comando	O que faz
break	Para o loop completamente
continue	Pula a iteração atual e continua o loop

Como posso usar 'break' para sair de um loop aninhado? 

Um break comum encerra apenas o loop mais interno. Para sair de um loop aninhado em Dart, você pode usar um rótulo (label).

Exemplo:

externo:
for (var i = 0; i < 3; i++) {
  for (var j = 0; j < 3; j++) {
    if (i == 1 && j == 1) {
      break externo;
    }
    print("i=$i, j=$j");
  }
}

Saída:

i=0, j=0
i=0, j=1
i=0, j=2
i=1, j=0

Quando a condição i == 1 && j == 1 é atingida, break externo; encerra o loop identificado pelo rótulo externo, saindo dos dois loops de uma vez.

Resumo
break; → sai apenas do loop atual.
break nomeDoRotulo; → sai do loop marcado com aquele rótulo, mesmo que existam outros loops dentro dele.

Em quais situações é útil usar o comando 'continue' em um loop? 

O comando continue é útil quando você quer pular uma iteração específica do loop e continuar com as próximas.

Exemplo: imprimir apenas números ímpares.

for (var i = 1; i <= 10; i++) {
  if (i.isEven) {
    continue;
  }
  print(i);
}

Saída:

1
3
5
7
9
Situações comuns
Ignorar valores inválidos.
Pular elementos que não atendem a uma condição.
Evitar blocos grandes de if.
Filtrar dados durante a repetição.
Resumo

Use continue quando quiser ignorar a iteração atual e seguir normalmente para a próxima repetição do loop.

Como posso usar um loop 'while' para ler dados de um arquivo? 

Você pode usar um while para continuar lendo o arquivo até não haver mais linhas.

Exemplo conceitual:

var linha = lerLinhaDoArquivo();

while (linha != null) {
  print(linha);
  linha = lerLinhaDoArquivo();
}

Funcionamento:

Lê a primeira linha.
Enquanto a linha existir (!= null), processa os dados.
Lê a próxima linha.
Quando chegar ao fim do arquivo, a leitura retorna null e o loop termina.
Resumo

Use um while quando quiser ler dados até atingir uma condição de parada, como o fim de um arquivo.