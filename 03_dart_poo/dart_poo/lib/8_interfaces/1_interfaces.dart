import 'package:dart_poo/8_interfaces/gol.dart';
import 'package:dart_poo/8_interfaces/uno.dart';

import 'carro.dart';

void main() {

  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  // print(uno.velocidadeMaxima());
  // print(gol.velocidadeMaxima());

  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);

  print(gol.tipoDeRodas()); // tipoDeRodas disponível somente em Gol
  // golcarro.tipoDeRodas(); // Não funciona, pois foi instaciado como tipo Carro
}

void printarDadosDoCarro(Carro carro) {
  print('''
    Carro:
      Tipo: ${carro.runtimeType}
      Portas: ${carro.portas}
      Rodas: ${carro.rodas}
      Motor: ${carro.motor}
      Velocidade Maxima: ${carro.velocidadeMaxima()}
  ''');
}