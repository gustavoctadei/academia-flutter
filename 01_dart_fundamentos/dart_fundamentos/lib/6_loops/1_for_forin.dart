void main() {
  
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Rodrigo', 'Guilherme', 'Arthur', 'Sandra', 'Marcos'];

  print('Imprimindo numeros com for convencional');
  for(var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('Imprimindo nomes com for convencional');
  for(var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  print('Imprimindo numeros com for-in');
  for(var numero in numeros) {
    print(numero);
  }

  print('Imprimindo nomes com for-in');
  for(var nome in nomes) {
    print(nome);
  }

  print('Imprimindo nomes com for convencional e break');
  for(var i = 0; i < nomes.length; i++) {
    print(nomes[i]);

    // if (nomes[i] == 'Guilherme') {
    //   break;
    // }
    if (i == 1) {
      break;
    }
  }

  print('Imprimindo nomes com for-in e break');
  for(var nome in nomes) {
    print(nome);
    if(nome == 'Guilherme') {
      break;
    }
  }

  print('Imprimindo nomes com for convencional e continue');
  for(var i = 0; i < nomes.length; i++) {
    if (i == 1 || i == 3) {
      continue;
    }
    print(nomes[i]);
  }

  // Collection For
  print('Collection For');
  var listaInt = [1, 2, 3];
  var listaString= [
    '#0',
    for (var i in listaInt) '#$i'
  ];

  print(listaString);

}