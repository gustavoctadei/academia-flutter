// Public Public
// Privado Private


// Características
// Comportamentos

class Camiseta {

  // Atributos de Instancia
  String? tamanho;
  String? _cor;
  String? marca;

  // Atributo de classe
  static const String nome = 'Camiseta';

  // Método de classe
  static String recuperarNome() => nome;
  static String _recuperarNome2() => nome;

  String? get cor => _cor;
  set cor(String? cor) {

    _Camiseta2();

    if (cor == 'Verde') {
      throw Exception('Não pode ser verde');
    }
  }

  // Funções dentro de classes são chamadas de
  // Métodos
  String tipoDeLavagem() {
    if(marca == 'Nike') {
      return 'Não pode lavar na máquina';
    
    } else {
      return 'Pode lavar na máquina';
    }
  }
  
  String _tipoDeLavagem2() {
    if(marca == 'Nike') {
      return 'Não pode lavar na máquina';
    
    } else {
      return 'Pode lavar na máquina';
    }
  }
}

class _Camiseta2{
  
  void recuperarCor() {
    var camiseta = Camiseta();
    camiseta._cor = 'Verde';
  }

}