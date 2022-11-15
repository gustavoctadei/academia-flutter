// import 'package:dart_poo/1_classes/camiseta.dart';
import 'camiseta.dart';

void main() {

  String nome = 'Nome';
  int idade = 1;

  // var camisetaNike = new Camiseta();
  // Camiseta camisetaNike = new Camiseta();
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';

  print(Camiseta.nome);
  // camisetaNike.nome;
  print(Camiseta.recuperarNome());

  // Camiseta.nome = 'Camiseta nike';
  
  print(Camiseta.nome);

  print('''
    Camiseta:
      Tamanho ${camisetaNike.tamanho}
      Cor: ${camisetaNike.cor}
      Marca: ${camisetaNike.marca}
      tipoLavagem: ${camisetaNike.tipoDeLavagem()}
  ''');

  Camiseta camisetaAdidas = Camiseta();
  camisetaAdidas.tamanho = 'G';
  camisetaAdidas.cor = 'Verde';
  camisetaAdidas.marca = 'Adidas';

  print('''
    Camiseta:
      Tamanho ${camisetaAdidas.tamanho}
      Cor: ${camisetaAdidas.cor}
      Marca: ${camisetaAdidas.marca}
      tipoLavagem: ${camisetaAdidas.tipoDeLavagem()}
  ''');

}