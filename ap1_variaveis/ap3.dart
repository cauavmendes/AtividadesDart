import 'dart:math';

void main() {
  final random = Random();

  var numero1 = random.nextInt(100);
  var numero2 = random.nextInt(100);

  print("Valores aleatórios");
  print(numero1);
  print(numero2);

  final temp = numero1;
  numero1 = numero2;
  numero2 = temp;

  print("Valores invertidos");
  print(numero1);
  print(numero2);
}