import 'gol.dart';
import 'uno.dart';
import 'carro.dart';

// variáveis de tipo superior e atributos de class
// não são auto promovidas para o tipo checado
Carro golCarro2 = Gol();

void main() {

  var uno = Uno();
  var gol = Gol();

  Carro golCarro = Gol();

  // Quando checamos se a variável é (is) de um tipo
  // Caso ela seja, o dart vai automaticamente converter
  // essa instancia para a classe do Tipo!!!
  if(golCarro is Gol) {
    print('Tipo de Rodas: ${golCarro.tipoDeRodas()}');
  }

  if(golCarro2 is Gol) {
    // print('Tipo de Rodas: ${golCarro2.tipoDeRodas()}'); // Não é auto promovido
  }

    var tipoDeRodas = (golCarro as Gol).tipoDeRodas();
  // var tipoDeRodas = (golCarro as Gol).tipoDeRodas();
  // print('Tipo de Rodas: $tipoDeRodas');
  
  // var tipoDeRodas2 = (uno as Gol).tipoDeRodas();
  // print('Tipo de Rodas: $tipoDeRodas2');

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
      Tipo De Rodas: ${carro is Gol ? carro.tipoDeRodas() : 'Não disponível'}
  ''');
}