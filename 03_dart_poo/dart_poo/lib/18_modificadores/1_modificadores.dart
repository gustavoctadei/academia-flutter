import 'pessoa.dart';

void main() {

  var p1 = const Pessoa(nome: 'Rodrigo', idade: 37);
  var p2 = const Pessoa(nome: 'Rodrigo', idade: 37);
  var p3 = const Pessoa(nome: 'Rodrigo', idade: 37);
  // var p3 = const Pessoa(nome: 'Rodrigo', idade: 39);

  print(p1 == p2);
  print(p1 == p2 && p2 == p3);
}

/*
1 - p1 = Pessoa(...)
2 - p2 = Pessoa(...)



1 - p1 = const Pessoa(...)
1 - p2 = p1
*/