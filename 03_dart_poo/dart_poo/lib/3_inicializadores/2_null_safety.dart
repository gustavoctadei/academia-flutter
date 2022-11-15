import 'package:dart_poo/3_inicializadores/cliente.dart';

late final String nome;

// TOME MUITO CUIDADO COM O LATE E O ! (FORCE NON NULL)

void main() {
  var cliente = Cliente(nome: 'Rodrigo');

  cliente.nome = 'Rodrigo';
  print(cliente.nome);
  
  // cliente.nome = 'Almeida';
  print(cliente.nome);
  // print(cliente.idade!.toLowerCase());

  if(cliente.idade != null) {
    print(cliente.idade!.toLowerCase());
  }

  print(cliente.idade?.toLowerCase() ?? '');

  nome = 'Rodrigo';
  print(nome);
  
  nome = 'Rahman';
  print(nome);

}