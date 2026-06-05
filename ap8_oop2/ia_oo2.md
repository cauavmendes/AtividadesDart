1. Sobrescrita de métodos (Override)

Ocorre quando uma classe filha redefine um método que já existe na classe pai.

class Animal {
void emitirSom() {
print('Som genérico');
}
}

class Cachorro extends Animal {
@override
void emitirSom() {
print('Au au');
}
}
Quando usar?

Quando a classe filha precisa de um comportamento específico, diferente do comportamento padrão da classe pai.

2. Chamando o método da classe pai

Utiliza-se super.

class Animal {
void emitirSom() {
print('Som genérico');
}
}

class Cachorro extends Animal {
@override
void emitirSom() {
super.emitirSom();
print('Au au');
}
} 3. Getters

Permitem acessar atributos privados de forma controlada.

class Pessoa {
String \_nome;

Pessoa(this.\_nome);

String get nome => \_nome;
}

Uso:

print(pessoa.nome); 4. Setters

Permitem alterar valores com validações.

class Pessoa {
int \_idade = 0;

set idade(int valor) {
if (valor >= 0) {
\_idade = valor;
}
}
}

Uso:

pessoa.idade = 20; 5. Classes abstratas

São classes que servem como modelo e não podem ser instanciadas.

abstract class Animal {
void emitirSom();
}

Isso é inválido:

Animal a = Animal();

Mas isso é válido:

class Cachorro extends Animal {
@override
void emitirSom() {
print('Au au');
}
}
Quando usar?

Quando você quer obrigar outras classes a implementar determinados comportamentos.

6. Herança

Permite reutilizar código de outra classe.

class Veiculo {
void ligar() {
print('Ligando');
}
}

class Carro extends Veiculo {}

Uso:

Carro carro = Carro();
carro.ligar(); 7. Herança x Composição
Herança

"É um"

class Cachorro extends Animal {}

Um cachorro é um animal.

Composição

"Tem um"

class Motor {}

class Carro {
Motor motor = Motor();
}

Um carro tem um motor.

Em projetos reais, composição costuma ser preferida por ser mais flexível.

8. Interfaces

Em Dart, qualquer classe pode servir como interface.

abstract class Voar {
void voar();
}

Implementação:

class Passaro implements Voar {
@override
void voar() {
print('Voando');
}
} 9. Herança x Interface
Herança
class Cachorro extends Animal
Reaproveita código.
Herdar comportamento.
Interface
class Passaro implements Voar
Define um contrato.
Obriga implementar métodos. 10. Métodos estáticos

Pertencem à classe, não ao objeto.

class Calculadora {
static int dobro(int numero) {
return numero \* 2;
}
}

Uso:

Calculadora.dobro(10);

Sem criar objeto:

// Não precisa
Calculadora calc = Calculadora();
Quando usar?

Quando o método:

Não depende de atributos da instância.
É uma utilidade.
Faz cálculos ou conversões. 11. Métodos de instância

Dependem do objeto criado.

class Pessoa {
String nome;

Pessoa(this.nome);

void apresentar() {
print('Meu nome é $nome');
}
}

Uso:

Pessoa p = Pessoa('João');
p.apresentar(); 12. Enumeradores (Enums)

Representam um conjunto fixo de valores.

enum StatusPedido {
pendente,
processando,
entregue
}

Uso:

StatusPedido status = StatusPedido.entregue; 13. Enum x Constantes

Ao invés de:

const String PENDENTE = 'pendente';
const String ENTREGUE = 'entregue';

Prefira:

enum StatusPedido {
pendente,
entregue
}

Vantagens:

Evita erros de digitação.
Mais legível.
Mais seguro.
Melhor suporte da IDE.
