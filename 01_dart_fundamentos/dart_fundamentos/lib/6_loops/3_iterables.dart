void main() {

  var numeros = List.generate(10, (index) => index);

  // for(var i = 0; i < numeros.length; i++) {
  //   if(i == 5) {
  //     continue;
  //   }
  //   print(numeros[i]);
  // }

  numeros
  .where((numero) => numero != 5)
  .forEach((numero) => print(numero));

  final numerosAte6 = numeros
  .takeWhile((numero) => numero < 7)
  .where((numero) => numero != 5)
  .toList();
  
  print(numeros);
  print(numerosAte6);

  print(numeros[1]);
  print(numerosAte6[1]);
  //print(numerosAte5.elementAt(1));

  final numerosRemoverAte5 = numeros
  .skipWhile((numero) => numero < 6)
  .toList();

  print(numerosRemoverAte5);
  
  var nomes = ['Rodrigo', 'Guilherme', 'Arthur', 'Sandra', 'Marcos'];
  
  var nomesSkip = nomes.skipWhile((nome) {
    if(nome != 'Arthur') {
      return true;
    
    } else {
      return false;
    }
  }).toList();
  print(nomesSkip);

  var numeroStringList = numeros.map((numero) {
    return 'numero é $numero';
  }).toList();
  print(numeroStringList);

  var numeroList = numeros.map((numero) {
    return numero + 10;
  }).toList();
  print(numeroList);

  final numerosRevertidos = numeros.reversed.toList();
  print(numerosRevertidos);

  final nomesRevertidos = nomes.reversed.toList();
  print(nomesRevertidos);

}