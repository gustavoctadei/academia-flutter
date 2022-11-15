import 'pessoa.dart';

void main() {

  // 1 - p1 = Pessoa()
  // 2 - p2 = Pessoa()
  var p1 = Pessoa(nome: 'Rodrigo', email: 'rodrigorahman@academiadoflutter.com', telefone: '99999999999');
  var p2 = Pessoa(nome: 'Rodrigo', email: 'rodrigorahman@academiadoflutter.com', telefone: '99999999999');
  // var p2 = Pessoa(nome: 'Rodrigo Rahman', email: 'rodrigorahman@academiadoflutter.com');

  //p2 = p1; // p2 recebe o mesmo endereço de memória que p1

  print(p1.hashCode);
  print(p2.hashCode);

  print(p1);
  print(p2);

  if(p1 == p2) {
    print('É igual');
  
  } else {
    print('Não é igual');
  }

}