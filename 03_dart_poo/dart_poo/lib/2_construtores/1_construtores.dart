import 'package:dart_poo/2_construtores/pessoa.dart';

void main() {
  
  // var pessoa = Pessoa(
  //   'Rodrigo Rahman', 38, 'Masculino'
  // );

  var pessoa = Pessoa(nome: 'Rodrigo Rahman', idade: 38, sexo: 'Masculino');

  print(pessoa.nome);

  // utilizando construtor nomeado
  var pessoaNomeado = Pessoa.semNome(idade: 38, sexo: 'Masculino');
  
  // utilizando construtor factory
  var pessoaFabrica = Pessoa.fabrica('Rodrigo Rahman');

}