O que é um Future em Dart?

Um Future representa um valor que estará disponível em algum momento no futuro.

Imagine que você pede uma pizza:

Você faz o pedido → o programa continua executando.
A pizza está sendo preparada → tarefa assíncrona.
Quando a pizza chega → o Future é concluído.

O Future permite que o programa continue funcionando enquanto espera uma operação demorada terminar.

Situações comuns:

Requisições para APIs
Leitura de arquivos
Acesso a banco de dados
Esperas temporizadas
O que significam os termos síncrono e assíncrono?
Síncrono

As tarefas acontecem uma após a outra.

O programa espera a tarefa atual terminar antes de continuar.

Fluxo:

Tarefa 1
↓
Tarefa 2
↓
Tarefa 3
Assíncrono

Uma tarefa pode ser iniciada e o programa continua executando outras instruções enquanto espera o resultado.

Fluxo:

Inicia Tarefa 1
↓
Continua executando
↓
Recebe resultado depois

Isso melhora a responsividade da aplicação.

Em quais situações devo usar Future?

Use quando a operação:

Demora para ser concluída
Depende de recursos externos
Pode bloquear o programa

Exemplos:

✅ Consultar uma API

✅ Ler um arquivo

✅ Salvar dados em banco

✅ Esperar alguns segundos

Evite usar Future para cálculos simples que terminam instantaneamente.

Como criar uma função que retorna um Future simulando demora?

Uma forma comum é usar um atraso artificial.

Exemplo conceitual:

Future<String> carregarDados() async {
await Future.delayed(Duration(seconds: 2));
return "Dados carregados";
}

O programa aguardará 2 segundos antes de retornar o valor.

De quais formas posso esperar um Future?

Existem duas principais.

1. Usando await

Mais legível e parecido com código síncrono.

final resultado = await carregarDados();

O código pausa apenas dentro da função assíncrona.

2. Usando then()

Executa uma função quando o Future termina.

carregarDados().then((resultado) {
print(resultado);
});
O que acontece se um Future falhar?

Um Future pode terminar com erro em vez de sucesso.

Exemplo de situações reais:

API indisponível
Arquivo não encontrado
Falha de conexão

Quando isso acontece, uma exceção é lançada.

Como lidar com erros usando Future?
Com try/catch

Quando utiliza await:

try {
final resultado = await carregarDados();
} catch (e) {
print("Erro: $e");
}
Com catchError()

Quando utiliza then():

carregarDados()
.then((resultado) {
print(resultado);
})
.catchError((erro) {
print("Erro: $erro");
});
Como simular um erro usando Future.error?

Você pode criar um Future que já nasce com erro.

Future<String> buscarDados() {
return Future.error("Falha ao buscar dados");
}

Isso é útil para testar tratamentos de exceção.

Existe uma forma de executar várias tarefas assíncronas em paralelo?

Sim.

O Dart permite iniciar várias operações ao mesmo tempo.

Conceitualmente:

await Future.wait([
tarefa1(),
tarefa2(),
tarefa3(),
]);

O programa espera todas terminarem.

Isso costuma ser mais rápido do que executar uma de cada vez.

Quais cuidados devo tomar ao não usar await?

Se você esquecer o await:

final resultado = carregarDados();

O valor armazenado não será o resultado final, mas sim um objeto Future.

Problemas comuns:

Tentar usar dados que ainda não chegaram.
Executar código fora de ordem.
Erros difíceis de identificar.

Pergunta útil para se fazer:

"Eu preciso do resultado agora ou posso continuar executando o programa enquanto ele é calculado?"

Se precisar do resultado antes de continuar, normalmente deve usar await.

Resumo rápido
Conceito Função
Future Valor que chegará no futuro
async Indica função assíncrona
await Espera um Future concluir
then() Executa código após o Future terminar
try/catch Trata erros com await
catchError() Trata erros com then()
Future.delayed() Simula demora
Future.error() Simula falha
Future.wait() Executa várias tarefas em paralelo
