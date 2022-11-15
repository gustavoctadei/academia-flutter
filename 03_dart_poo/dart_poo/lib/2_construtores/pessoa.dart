class Pessoa {
  
  String? nome;
  int? idade;
  String? sexo;

  // Construtor default, todas as classes tem automaticamente
  // Pessoa();

  // Pessoa(String nomeConstruct, int idadeConstruct, String sexoConstruct) {
  //   nome = nomeConstruct;
  //   idade = idadeConstruct;
  //   sexo = sexoConstruct;
  // }

  // Construtor default
  Pessoa({
    required this.nome,
    required this.idade,
    required this.sexo,
  });
  

  //Construtores nomeados
  Pessoa.semNome({
    required this.idade,
    required this.sexo,
  });

  Pessoa.vazia();

  // Construtor do tipo factory é utilizado quando temos uma regra de negócio
  // para criação da nossa classe
  factory Pessoa.fabrica(String nomeConstruct) {
    var nome = nomeConstruct + '_Fabrica';
    var pessoa = Pessoa.vazia();

    pessoa.nome = nome;
    
    return pessoa;
  }


}