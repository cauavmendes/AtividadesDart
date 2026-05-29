import 'dart:math';

void main() {
  funcA(funcB, funcC);
}

void funcA(
  void Function(int, int) operacao1,
  void Function(int, int) operacao2,
) {
  final random = Random();

  for (int i = 0; i < 1; i++) {
    int a = random.nextInt(100);
    int b = random.nextInt(100);
    operacao1(a, b);
  }

  for (int i = 0; i < 1; i++) {
    int c = random.nextInt(100);
    int d = random.nextInt(100);
    operacao2(c, d);
  }
}

void funcB(int a, int b) {
  print("$a + $b = ${a + b}");
}

void funcC(int c, int d) {
  print("$c * $d = ${c * d}");
}
