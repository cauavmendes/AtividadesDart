void main() {
  Retangulo retangulo = Retangulo(5.0, 3.0);
  double area = retangulo.calcularArea();
  print('Area do retângulo: $area');
}

class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  calcularArea() {
    double area = largura * altura;
    return area;
  }
}
