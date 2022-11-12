void main() {
  
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome 
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  print('1 - Remova os pacientes duplicados e apresente a nova lista');

  var pessoasNaoDuplicadas = pessoas.toSet().toList();
  print(pessoasNaoDuplicadas);

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  print('');
  print('2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  
  final homens = [];
  final mulheres = [];
  final sexoMap = Sexo.values.asNameMap();

  for (var p in pessoasNaoDuplicadas) {
    var dadosPesoais = p.split('|');

    var nome = dadosPesoais[0];
    var idade = dadosPesoais[1];
    
    var sexoString = dadosPesoais[2].toLowerCase();
    var sexo = sexoMap[sexoString];

    switch(sexo) {
      
      case Sexo.masculino:
        homens.add(nome);
        break;
      
      case Sexo.feminino:
        mulheres.add(nome);
        break;

      default:
        break;
    }
  }

  print('Mulheres -> Total: ${mulheres.length}');
  mulheres.forEach(print);

  print('');
  print('Homens -> Total: ${homens.length}');
  homens.forEach(print);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print('');
  print('3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  
  pessoasNaoDuplicadas = maioresDeIdade(pessoasNaoDuplicadas);
  print(pessoasNaoDuplicadas);

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print('');
  print('4 - Encontre a pessoa mais velha e apresente o nome dela.');

  var nomePessoaMaisVelha = '';
  var idadeMaisVelha = -1;
  for (var p in pessoasNaoDuplicadas) {
    final dadosPessoais = p.split('|');

    var nome = dadosPessoais[0];

    var idade = int.tryParse( dadosPessoais[1] );

    if (idade != null && (idade > idadeMaisVelha)) {
      idadeMaisVelha = idade;
      nomePessoaMaisVelha = nome;
    }
  }

  print(nomePessoaMaisVelha);

}

enum Sexo {
  masculino, feminino
}

List<String> maioresDeIdade(List<String> pessoas) {
  var listaFiltrada = [...pessoas];
  var remover = [];

  for (var p in listaFiltrada) {
    final dadosPessoais = p.split('|');

    var idade = int.tryParse( dadosPessoais[1] );

    if (idade != null && idade <= 18) {
      remover.add(p);
    }
  }

  for (var p in remover) {
    listaFiltrada.remove(p);
  }

  return listaFiltrada;
}