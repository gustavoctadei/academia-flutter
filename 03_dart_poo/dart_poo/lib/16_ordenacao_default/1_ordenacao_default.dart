import 'cliente.dart';

void main() {

  var c1 = Cliente(nome: 'Rodrigo', telefone: '99999999999');
  var c2 = Cliente(nome: 'Luana', telefone: '99999999999');
  var c3 = Cliente(nome: 'Guilherme', telefone: '99999999999');
  var c4 = Cliente(nome: 'Arthur', telefone: '99999999999');

  var lista = [c1, c2, c3, c4];
  print(lista);

  // lista.sort((c1, c2) => c1.nome.compareTo(c2.nome));
  lista.sort();
  print(lista);

}