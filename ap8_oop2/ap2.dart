void main() {
  Cachorro cachorro = Cachorro();
  cachorro.latir();
  cachorro.comer();
  cachorro.beber();
}

abstract class Animal {
  void comer();
  void beber();
}

class Cachorro extends Animal {
  void latir() {
    print("O cachorro está latindo");
  }

  @override
  void comer() {
    print("O animal está comendo");
  }

  @override
  void beber() {
    print("O animal está bebendo");
  }
}
