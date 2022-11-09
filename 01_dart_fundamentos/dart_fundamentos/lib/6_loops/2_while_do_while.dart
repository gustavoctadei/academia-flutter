void main() {

  var numero = 0;
  print('While convencional');
  while(numero < 10) {
    print(numero);
    numero++;
  }

  // DoWhile
  print('DoWhile');
  var indice = 0;

  print('While não será executado');
  while(indice > 0) {
    print(indice);
    indice ++;
  }

  do {
    print(indice);
    //indice++;
  } while(indice > 0);

}