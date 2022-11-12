void main() {

  // const cor = 'vermelho';
  var cor = Cores.vermelho;

  // if(cor == 'vermelho') {
  if(cor == Cores.vermelho) {

  }

  // switch(cor) {
    
  //   case Cores.azul:
  //     // TODO: Handle this case.
  //     break;
  //   case Cores.vermelho:
  //     // TODO: Handle this case.
  //     break;
  //   case Cores.laranja:
  //     // TODO: Handle this case.
  //     break;
  //   case Cores.verde:
  //     // TODO: Handle this case.
  //     break;
  //   case Cores.preto:
  //     // TODO: Handle this case.
  //     break;
  // }

  // Transformando String em Enum
  // Antes da versão 2.15
  var azul = 'azul';
  var corAzul = Cores.values.where((cor) => cor.toString() == 'Cores.$azul');
  print(corAzul);

  // 2.15
  print(Cores.azul.name);

  var corAzul215 = Cores.values.byName(azul);
  print(corAzul215);

  var coresMap = Cores.values.asMap();
  print(coresMap);
  
  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);
  var corAzulPeloNameMap = coresNameMap[azul];
  print(corAzulPeloNameMap);

  // Cores.values.byName('branco'); // Dá exception caso não tenha o valor desejado
  var corBranco = coresNameMap['Branco'];
  print(corBranco);

}

enum Cores {
  azul, vermelho, laranja, verde, preto,
}