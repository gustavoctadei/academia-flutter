import 'package:dart_async/7_modelos/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'cidade.dart';
import 'user_mais_facil.dart';

void main() {
  // buscarCep();
  buscarUser();
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // // print(response.body);
    // var responseData = convert.jsonDecode(response.body);
    // // print(response.body.runtimeType);
    // // print(responseData.runtimeType);

    // if (responseData is Map) {
    //   print(responseData['cep']);
    //   print(responseData['logradouro']);
    //   print(responseData['localidade']);

      var cidade = Cidade.fromJson(response.body);
      print(cidade);
      print(cidade.cep);
      print(cidade.logradouro);
      print(cidade.localidade);

      print(cidade.toMap());
      print(cidade.toJson());
    }
    
}

Future<void> buscarUser() async {
  var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // var user = User.fromJson(response.body);
    var user = UserMaisFacil.fromJson(response.body);
    print(user);
  }
}