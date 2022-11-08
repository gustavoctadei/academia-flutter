void main() {

  final numeros = [1, 2, 3, 4];
  print(numeros);

  numeros.add(1);
  print(numeros);

  final nomes = ['Gustavo', 'João', 'Maria', 'Guilherme'];
  print(nomes);

  nomes.add('Luana');

  nomes.addAll(['Gustavo2', 'Luana2', 'Maria2']);

  print(nomes);
  print(nomes[0]);
  print(nomes[1]);

  print('Adicionando Jose na lista');
  nomes.insert(0, 'Jose');
  nomes.insert(3, 'Jose 3');
  print(nomes);
  print(nomes[0]);

  nomes.remove('Jose 3');
  print(nomes);

  nomes.removeWhere((nome) {
    print('Nome procurado: $nome');
    if (nome == 'Gustavo') {
      return true;
    }
    else {
      return false;
    }
  });
  print(nomes);

  print(nomes[0]);
  print(nomes.first);
  
  print(nomes.length);
  
  // print(nomes[nomes.length]);
  // print(nomes[nomes.length - 1]);
  print(nomes.last);

  print('Buscando o primeiro nome');
  //var primeiroNome = nomes.firstWhere((nome) => nome == 'Maria');
  var primeiroNome = nomes.firstWhere((nome) {
    if (nome == 'Maria') {
      return true;
    }
    else {
      return false;
    }
  });
  print(primeiroNome);

  final numerosGerados = List.generate(10, (index) => index + 1);
  print(numerosGerados);

  final stringGerados = List.generate(10, (index) => 'Indice #${index + 1}');
  print(stringGerados);

  final repeticoes = List.filled(10, 'Gustavo');
  print(repeticoes);

  final numerosGeradosParaCalculo = List.generate(100, (index) => index + 1);
  var soma = numerosGeradosParaCalculo.fold<int>(0, (previousValue, numero) => previousValue = previousValue + numero);
  print(soma);

  // Spread operator (...)
  var listaNumesSpreadB = [4, 5, 6];
  
  var listaNumerosSpread = [1, 2, 3, ...listaNumesSpreadB];
  print(listaNumerosSpread);

  // Collection if
  var promocaoAtiva = true;
  //var promocaoAtiva = false;
  var produtos = [
    'Cerveja',
    'Refrigerante',
    if (promocaoAtiva) 'Suco de Laranja'
  ];

  print(produtos);

  // Collection For
  var listaInt = [1, 2, 3];
  var listaString= [
    '#0',
    for (var i in listaInt) '#$i'
  ];

  print(listaString);
  var string = listaString.join('->');
  print(string);

}