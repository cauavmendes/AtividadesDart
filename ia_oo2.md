1. Herança, Sobrescrita e Classes AbstratasO que é Herança e Sobrescrita (@override)? A Herança permite que uma classe (filha) herde atributos e métodos de outra classe (pai), promovendo o reaproveitamento de código.Sobrescrever um método significa redefinir o comportamento de um método que veio da classe pai para que ele se adapte à realidade da classe filha. Em Dart, usamos a anotação @override para indicar isso explicitamente.Por que fazer isso? Para que classes filhas respondam ao mesmo "comando" de maneiras diferentes (Polimorfismo).Chamando o método original: Se você quiser aproveitar o comportamento do pai e apenas adicionar algo a mais, use a palavra-chave super.nomeDoMetodo().Dartclass Animal {
   void emitirSom() => print("Som genérico");
   }

class Cachorro extends Animal {
@override
void emitirSom() {
super.emitirSom(); // Chama o som genérico primeiro
print("Au Au!"); // Adiciona o comportamento específico
}
}
Classes Abstratas vs. Classes ConcretasUma classe abstrata funciona como um molde/plano de desenvolvimento. Ela não pode ser instanciada (você não pode dar um new ou criar um objeto direto dela). Ela serve exclusivamente para ser herdada ou implementada.Quando usar? Quando você tem um conceito geral que não deve existir sozinho no mundo real. Por exemplo: você não cria um objeto "ContaBancaria", você cria uma "ContaCorrente" ou "ContaPoupanca".2. Encapsulamento: Getters, Setters e Atributos PrivadosEm Dart, qualquer atributo ou método que começa com um sublinhado (\_) torna-se privado para a biblioteca (o arquivo .dart) onde foi criado.Por que usar Getters e Setters em vez de acesso direto?Validação: Você pode impedir que dados inválidos entrem no seu sistema.Proteção (Read-only): Você pode criar um getter sem um setter, tornando a variável pública para leitura, mas impossível de ser alterada por fora.Dartclass ContaBancaria {
double \_saldo = 0.0; // Privado

// Getter: Permite ler o saldo
double get saldo => \_saldo;

// Setter com Validação: Impede depósitos negativos
set saldo(double valor) {
if (valor >= 0) {
\_saldo = valor;
} else {
print("Valor de depósito inválido!");
}
}
} 
3. Interfaces e Contratos de Comportamento 
Ao contrário de outras linguagens (como Java), Dart não possui a palavra-chave interface. Em Dart, toda classe é implicitamente uma interface. Quando queremos usar uma classe como contrato, usamos a palavra-chave implements.Diferença entre Herança (extends) e Implementação (implements)CaracterísticaHerança (extends)Implementação (implements)Relação"É um" (Herda a estrutura e o código)."Funciona como" (Assina um contrato).Reaproveitamento Copia o comportamento do pai automaticamente. Não reaproveita nada; você obrigatoriamente deve reescrever todos os métodos.MultiplicidadeDart permite herdar de apenas uma classe pai.Uma classe pode implementar várias interfaces.4. Métodos Estáticos e Enumeradores (Enums)Métodos Estáticos (Métodos de Classe)São métodos que pertencem à classe em si, e não às instâncias (objetos) dela.Como acessar? Você os chama direto pelo nome da classe: NomeDaClasse.metodo().Quando usar? Para funções utilitárias que não dependem do estado interno de nenhum objeto. Exemplo: Matematica.calcularRaiz(16).Enumeradores (enum)Os enums servem para representar um conjunto fixo de valores constantes e nomeados. Eles tornam o código muito mais seguro contra erros de digitação.Por que usar enums em vez de String/int constantes? Se você usa Strings como "admin" e "usuario", um erro de digitação ("admin") quebra o sistema. O enum é validado pelo próprio compilador.Dartenum TipoUsuario { admin, gerente, cliente }

void verificarAcesso(TipoUsuario tipo) {
if (tipo == TipoUsuario.admin) {
print("Acesso total");
}
}
