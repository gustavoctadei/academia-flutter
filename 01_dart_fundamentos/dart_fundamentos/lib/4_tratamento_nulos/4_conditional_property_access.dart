import 'package:dart_fundamentos/4_tratamento_nulos/3_null_aware_operator.dart';

String? nomeCompleto;
int? idade;

void main() {
  
  //var nomeCompletoLocal = nomeCompleto;

  // if (nomeCompletoLocal != null) {
  //   print(nomeCompletoLocal.toUpperCase());
  // } else {
  //   print('Nome não preenchido');
  // }

  //Null aware operator
  // var nomeCompletoLocal = nomeCompleto ?? 'Nome não preeenchido';
  // print(nomeCompletoLocal);

  //Conditional property access
  print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido');
  print(idade?.round() ?? 'Idade não preenchida');
}