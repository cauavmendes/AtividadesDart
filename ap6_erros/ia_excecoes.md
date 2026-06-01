Qual a diferença entre um erro e uma exceção em Dart?

Resumo:

Exception (Exceção): situações que podem acontecer durante a execução e que o programa pode tratar.
Exemplos: entrada inválida, arquivo não encontrado, falha de conexão.
Ex.: FormatException, Exception.
Error (Erro): problemas que geralmente indicam falhas no código ou na lógica do programa.
Exemplos: acessar uma posição inexistente de uma lista, chamar um método em um objeto nulo.
Ex.: RangeError, NoSuchMethodError.

Regra prática:

Exception: problema esperado → trate com try/catch.
Error: bug no código → corrija a causa do erro.

Em quais situações devo esperar encontrar um erro, e em quais devo esperar uma exceção?

Você pode pensar assim:

Espere uma Exception quando o problema depende de fatores externos ou de dados recebidos

São situações que podem acontecer mesmo que seu código esteja correto:

Usuário digitou um valor inválido.
Arquivo não existe.
Internet caiu.
API retornou erro.
Conversão de texto para número falhou.

Exemplo:

try {
int idade = int.parse("abc");
} catch (e) {
print("Valor inválido");
}

Aqui o usuário pode fornecer dados incorretos, então faz sentido tratar a exceção.

Espere um Error quando o problema indica um bug no programa

São situações que normalmente não deveriam acontecer se a lógica estivesse correta:

Acessar uma posição inexistente de uma lista.
Chamar um método em um objeto nulo.
Criar um loop recursivo infinito.
Usar um valor fora dos limites esperados.

Exemplo:

List<int> numeros = [1, 2, 3];
print(numeros[10]); // RangeError

Aqui o erro foi causado pela lógica do programador.

Regra prática

Pergunte a si mesmo:

"Isso pode acontecer por causa do usuário, dos dados ou do ambiente?"

Se sim → provavelmente é uma Exception.
Se não, e o problema surgiu por uma falha na lógica do código → provavelmente é um Error.

Essa distinção ajuda a decidir quando usar try/catch e quando corrigir a implementação do programa.

O que fazem os blocos 'try', 'catch' e 'finally' em Dart?

try

O bloco try contém o código que pode gerar uma exceção ou erro.

try {
int numero = int.parse("abc");
}
catch

O bloco catch é executado quando ocorre uma exceção ou erro dentro do try.

try {
int numero = int.parse("abc");
} catch (e) {
print("Ocorreu um erro: $e");
}

Saída:

Ocorreu um erro: FormatException: Invalid radix-10 number
finally

O bloco finally é executado sempre, independentemente de ocorrer erro ou não.

try {
int numero = int.parse("123");
print(numero);
} catch (e) {
print("Erro: $e");
} finally {
print("Fim da execução");
}

Saída:

123
Fim da execução

Se houver erro:

try {
int numero = int.parse("abc");
} catch (e) {
print("Erro: $e");
} finally {
print("Fim da execução");
}

Saída:

Erro: FormatException: Invalid radix-10 number
Fim da execução
Resumo
Bloco Função
try Executa o código que pode gerar erro/exceção
catch Captura e trata o erro/exceção
finally Executa sempre, com ou sem erro

Um uso muito comum do finally é fechar arquivos, conexões com banco de dados ou liberar recursos que precisam ser encerrados mesmo quando ocorre uma falha.

O que fazem os blocos 'try', 'catch' e 'finally' em Dart?
try

O bloco try contém o código que pode gerar uma exceção ou erro.

try {
int numero = int.parse("abc");
}
catch

O bloco catch é executado quando ocorre uma exceção ou erro dentro do try.

try {
int numero = int.parse("abc");
} catch (e) {
print("Ocorreu um erro: $e");
}

Saída:

Ocorreu um erro: FormatException: Invalid radix-10 number
finally

O bloco finally é executado sempre, independentemente de ocorrer erro ou não.

try {
int numero = int.parse("123");
print(numero);
} catch (e) {
print("Erro: $e");
} finally {
print("Fim da execução");
}

Saída:

123
Fim da execução

Se houver erro:

try {
int numero = int.parse("abc");
} catch (e) {
print("Erro: $e");
} finally {
print("Fim da execução");
}

Saída:

Erro: FormatException: Invalid radix-10 number
Fim da execução
Resumo
Bloco Função
try Executa o código que pode gerar erro/exceção
catch Captura e trata o erro/exceção
finally Executa sempre, com ou sem erro

Um uso muito comum do finally é fechar arquivos, conexões com banco de dados ou liberar recursos que precisam ser encerrados mesmo quando ocorre uma falha.

Como posso capturar diferentes tipos de exceções usando 'catch'?

Em Dart, você pode capturar diferentes tipos de exceções usando a cláusula on antes do catch.

Exemplo
try {
int numero = int.parse("abc");
} on FormatException {
print("Formato inválido!");
} catch (e) {
print("Outro erro: $e");
}

Nesse caso:

Se ocorrer uma FormatException, o primeiro bloco será executado.
Qualquer outro erro ou exceção cairá no catch.
Capturando vários tipos
try {
// código que pode gerar diferentes exceções
} on FormatException {
print("Erro de formato");
} on UnsupportedError {
print("Operação não suportada");
} catch (e) {
print("Erro desconhecido: $e");
}
Obtendo o objeto da exceção

Você também pode combinar on e catch:

try {
int numero = int.parse("abc");
} on FormatException catch (e) {
print("Exceção capturada: $e");
}
Capturando a pilha de chamadas (stack trace)
try {
int numero = int.parse("abc");
} catch (e, s) {
print("Erro: $e");
print("Stack trace: $s");
}
e → a exceção ou erro.
s → o stack trace, útil para depuração.
Resumo
try {
// código
} on TipoDeExcecao1 {
// trata TipoDeExcecao1
} on TipoDeExcecao2 catch (e) {
// trata TipoDeExcecao2 e acessa o erro
} catch (e, s) {
// trata qualquer outro erro
} finally {
// executa sempre
}

A prática mais comum é usar on para exceções específicas e deixar um catch genérico por último para capturar qualquer problema não previsto.

Em quais situações é útil usar o bloco 'finally'?

O bloco finally é útil quando você precisa executar um código independentemente de ter ocorrido uma exceção ou não.

Situações comuns:

Fechar arquivos.
Fechar conexões com banco de dados.
Encerrar conexões de rede.
Liberar recursos utilizados pelo programa.
Executar uma mensagem ou limpeza final.

Por que eu precisaria lançar uma exceção em meu código?

Você lança uma exceção quando detecta uma situação inválida e quer informar ao código que chamou sua função que algo deu errado.

Por exemplo, imagine uma função que realiza um saque:

void sacar(double saldo, double valor) {
if (valor > saldo) {
throw Exception("Saldo insuficiente");
}

print("Saque realizado");
}

Uso:

try {
sacar(100, 150);
} catch (e) {
print(e);
}

Saída:

Exception: Saldo insuficiente
Quando lançar uma exceção?
Quando um parâmetro recebido é inválido.
Quando uma operação não pode ser concluída.
Quando uma regra de negócio é violada.
Quando você quer obrigar quem chamou a função a lidar com o problema.

Como posso personalizar mensagens de erro ao lançar exceções?

Você pode personalizar mensagens de erro passando uma mensagem para a exceção quando usa throw.

Exemplo simples
void dividir(int a, int b) {
if (b == 0) {
throw Exception("Não é possível dividir por zero.");
}

print(a / b);
}

Ao capturar:

try {
dividir(10, 0);
} catch (e) {
print(e);
}

Saída:

Exception: Não é possível dividir por zero.

Quais são as melhores práticas para lançar exceções em Dart?

Use exceções para erros realmente excepcionais.
Prefira tipos específicos (ArgumentError, FormatException, etc.).
Crie exceções personalizadas para regras de negócio.
Escreva mensagens descritivas.
Valide os dados cedo.
Só use catch quando puder tratar o problema adequadamente.

Qual a diferença entre usar 'assert' e lançar uma exceção para verificar condições?

A principal diferença é o objetivo de cada um.

assert

O assert é usado para verificar condições que devem ser verdadeiras durante o desenvolvimento. Se a condição for falsa, o programa gera um erro de asserção.

void cadastrarIdade(int idade) {
assert(idade >= 0, "A idade não pode ser negativa");
}

É útil para detectar bugs e pressupostos incorretos durante os testes.

throw

O throw é usado para tratar erros que podem ocorrer em produção e que precisam ser comunicados ao restante da aplicação.

void cadastrarIdade(int idade) {
if (idade < 0) {
throw ArgumentError("A idade não pode ser negativa");
}
}

Aqui o erro será tratado independentemente de estar em desenvolvimento ou produção.

Em quais situações o 'assert' é mais útil durante o desenvolvimento?

O assert é mais útil quando você quer verificar se uma suposição do seu código está correta. Se o assert falhar, geralmente significa que há um bug na lógica do programa.

Como organizar minhas exceções no projeto?

Organize suas exceções criando uma pasta específica para elas:

lib/
└── exceptions/
├── app_exception.dart
├── usuario_exception.dart
└── saldo_insuficiente_exception.dart
Crie uma exceção base (AppException) para reutilizar código.
Crie exceções específicas para cada tipo de erro:
UsuarioNaoEncontradoException
SaldoInsuficienteException
ValidationException
NetworkException

Exemplo:

class SaldoInsuficienteException implements Exception {
final String mensagem;

SaldoInsuficienteException(this.mensagem);
}

Uso:

throw SaldoInsuficienteException(
"Saldo insuficiente."
);

Boas práticas:

Use nomes terminados em Exception.
Prefira exceções específicas em vez de Exception genérica.
Mantenha as exceções em uma pasta própria.
Escreva mensagens claras e descritivas.
