import 'package:consumo_api/models/cidade.dart';
import 'package:consumo_api/models/telefone.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Telefone telefone;

  Endereco({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
    required this.telefone
  });
  
}