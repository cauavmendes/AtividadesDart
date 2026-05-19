import 'dart:math';

void main() {
  final random = Random();

  final numero1 = random.nextInt(100);
  final numero2 = random.nextInt(100);

  final resultado = numero1 / numero2; 
  final parteInteira = resultado.floor();
  final parteDecimal = (resultado.floor() - resultado).abs();
  
  print("Numero 1: $numero1");
  print("Numero 2: $numero2");
  print("Divisão: $resultado");
  print("Parte inteira: $parteInteira");
  print("Parte decimal: $parteDecimal");
}