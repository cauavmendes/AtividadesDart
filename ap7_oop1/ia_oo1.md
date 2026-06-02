Guia de Estudos: Orientação a Objetos em Dart (Parte 1)

1. Quais são os principais conceitos da Orientação a Objetos (OO)?
   A Orientação a Objetos é um paradigma de programação que tenta aproximar a estrutura do código ao mundo real. Ela se baseia em quatro pilares principais:

Abstração: Isolar os aspectos essenciais de um problema, ignorando detalhes menos importantes. É decidir o que sua classe precisa representar (ex: uma classe Carro precisa de cor e velocidade, mas talvez não precise do tipo do parafuso da roda).

Encapsulamento: Esconder os detalhes internos do funcionamento de um objeto e proteger seus dados, permitindo o acesso apenas através de métodos seguros.

Herança: Capacidade de uma nova classe (filha) herdar características e comportamentos de uma classe existente (mãe), promovendo o reuso de código.

Polimorfismo: Permite que duas ou mais classes derivadas da mesma superclasse respondam à mesma mensagem de maneiras diferentes (ex: Cachorro e Gato herdam de Animal, mas cada um faz um som diferente).

2. Vantagens da OO em comparação com outros paradigmas
   Comparada à programação procedural pura, a OO traz grandes benefícios para projetos que tendem a crescer:

Reutilização de código: Menos repetição através de herança e composição.

Manutenibilidade: Como o código é modular (dividido em classes), rastrear bugs ou modificar funcionalidades fica muito mais simples.

Organização mental: Fica mais fácil mapear regras de negócio do mundo real diretamente para o software.

3. O que é uma Classe e como ela se relaciona com Objetos?
   Pense na Classe como a planta baixa de uma casa ou o molde de um bolo. Ela não é a casa em si, mas a definição de como a casa deve ser construída.
   O Objeto é a casa física construída a partir daquela planta. Em termos técnicos, o objeto é uma instância da classe.

4. O que são Métodos e como funcionam?
   Métodos são funções que pertencem a uma classe. Eles definem os comportamentos ou ações que os objetos daquela classe podem realizar. Eles têm acesso aos atributos (dados) do próprio objeto para realizar suas tarefas.

5. Sintaxe Prática em Dart: Classes, Atributos, Métodos e Visibilidade
   Vamos ver como declarar classes, atributos (públicos e privados) e métodos em Dart.

💡 Regra de Ouro do Dart: Diferente de linguagens como Java ou C#, o Dart não possui as palavras-chave public ou private.

Por padrão, tudo é público.

Para tornar um atributo ou método privado, basta iniciar o nome dele com um underline (\_). Isso o torna privado em nível de arquivo/biblioteca.

Dart
class ContaBancaria {
// Atributo público: qualquer um pode ler e alterar diretamente
String titular;

// Atributo privado: protegido contra acessos externos diretos do arquivo
double \_saldo = 0.0;

// Construtor Padrão (Forma simplificada do Dart)
ContaBancaria(this.titular);

// Método público: interface para interagir com o objeto
void depositar(double valor) {
if (valor > 0) {
\_saldo += valor;
print('Depósito de R\$$valor realizado com sucesso!');
}
}

// Método público que dá acesso controlado ao atributo privado (Getter)
double get saldo Atual => \_saldo;
}

void main() {
// Criando um objeto (instanciando a classe)
var conta = ContaBancaria('Lince Tech');

conta.depositar(150.00); // Executando um método
print('Saldo atual: R\$${conta.saldoAtual}'); // Acessando o getter
} 6. Construtores Padrão vs. Construtores Nomeados
Construtor Padrão: Tem o mesmo nome da classe e é o método principal utilizado para criar o objeto.

Construtor Nomeado: Permite que uma classe tenha múltiplos construtores com propósitos ou parâmetros diferentes, deixando o código muito mais expressivo.

Dart
class Player {
String nome;
int nivel;

// Construtor Padrão
Player(this.nome, this.nivel);

// Construtor Nomeado: Usado especificamente para novos jogadores
Player.novoJogador(this.nome) : nivel = 1;
}

void main() {
var playerExperiente = Player('Arthur', 50); // Padrão
var playerIniciante = Player.novoJogador('Lucas'); // Nomeado
} 7. O que são Factories em Dart e quando usar?
A palavra-chave factory indica um construtor que nem sempre cria uma nova instância da sua classe.
Você deve usá-la quando:

Quiser retornar uma instância de uma subclasse (herança) em vez da própria classe.

Quiser implementar o padrão Singleton (garantir que exista apenas uma instância daquela classe no app inteiro).

Quiser retornar uma instância que já foi criada e está guardada em um cache (evitando gasto de memória).

Dart
class Logger {
final String nome;
// Um cache simulado usando um mapa estático
static final Map<String, Logger> \_cache = <String, Logger>{};

// O construtor factory intercepta a criação
factory Logger(String nome) {
// Se o logger já existir no cache, retorna ele. Se não, cria um novo.
return \_cache.putIfAbsent(nome, () => Logger.\_interno(nome));
}

// Um construtor nomeado privado, usado internamente
Logger.\_interno(this.nome);
} 8. Dicas de Organização do Projeto e Identificação de Classes
Como identificar quando usar classes em Dart?
Fique atento aos sinais:

Se você tem variáveis soltas que sempre andam juntas (ex: String rua, int numero, String cep), elas deveriam ser agrupadas em uma classe Endereco.

Se você precisa representar uma entidade do seu negócio que possui características (dados) e ações (funções).

Dicas de Organização de código:
Um arquivo por classe: Evite colocar dezenas de classes no mesmo arquivo .dart. Separe-as para facilitar a leitura.

Arquitetura em Camadas: Divida suas classes em pastas lógicas no seu projeto lib/, por exemplo:

models/: Classes que apenas representam dados (ex: usuario.dart, produto.dart).

services/: Classes responsáveis por buscar dados de APIs ou banco de dados.

controllers/ ou blocs/: Classes que gerenciam a lógica de estado das telas.

// Opinião pessoal: me impressionou o fato do dart não utilizar "private" ou "public" e sim underline.
