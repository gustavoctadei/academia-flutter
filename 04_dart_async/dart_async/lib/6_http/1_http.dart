import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {

  // await buscarCep();
  // await buscarPosts();
  // await buscarCepErro();
  // await salvarPost();
  await atualizarPost();

}

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';

  var mapaRequest = {
    'title': 'Post novo',
    'body': 'Descricao do post',
    'userId': 1
    };

  var response = 
      await http.post(Uri.parse(url), body: convert.jsonEncode(mapaRequest));

  print(response.statusCode);
  print(response.body);
}

Future<void> atualizarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';

  var mapaRequest = {
    'id': 1,
    'title': 'Post novo',
    'body': 'Descricao do post',
    'userId': 1
    };

  var response = 
      await http.put(
        Uri.parse(url), 
        body: convert.jsonEncode(mapaRequest),
        headers: {
          'Content-Type' : 'application/json; charset=UTF-8'
        });

  print(response.statusCode);
  print(response.body);
}

Future<void> buscarPosts() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.json.decode(response.body);
    
    if (responseData is List) {
      for (var data in responseData) {
        print(data['id']);
      }
      // responseData.forEach((element) => print(element['id']));
    }
  }
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // print(response.body);
    var responseData = convert.jsonDecode(response.body);
    // print(response.body.runtimeType);
    // print(responseData.runtimeType);

    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
    
  }
}

Future<void> buscarCepErro() async {
  var url = 'https://viacep.com.br/ws/9999999/json/';
  var response = await http.get(Uri.parse(url));

  // Status de 200 a 299
  if (response.statusCode >= 200 && response.statusCode < 300) {
    // print(response.body);
    var responseData = convert.jsonDecode(response.body);
    // print(response.body.runtimeType);
    // print(responseData.runtimeType);

    if (responseData is Map) {
      print(responseData['cep']);
      print(responseData['logradouro']);
      print(responseData['localidade']);
    }
    
  } else {
    print('Ocorreu um problema. Mensagem: ${response.reasonPhrase}');
    // print(response.statusCode);
    // print(response.body);
    // print(response.reasonPhrase);
  }
}