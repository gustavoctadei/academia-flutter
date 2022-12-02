import 'dart:convert';

// import 'package:consumo_api/consumo_api.dart' as consumo_api;
import 'package:consumo_api/controller/alunos_controller.dart';
import 'package:consumo_api/models/telefone.dart';

void main() {
  // AlunosController().findAll();
  // AlunosController().findById('2');
  // AlunosController().update();
  // AlunosController().insert();
  AlunosController().findById('91080680-71f2-11ed-91bc-fb69e9e0bcbe');
}

void main2(List<String> arguments) {
  String cidadeJson = '''
    {
      "id": 1,
      "nome": "Santo André"
    }
  ''';

  String cidadeJsonList = '''
    [{
      "id": 1,
      "nome": "Santo André",
      "regiao": {
        "nome": "ABC Paulista"
      }
    },
    {
      "id": 2,
      "nome": "São Paulo",
      "regiao": {
        "nome": "ABC Paulista"
      }
    }]
  ''';

  // [] -> List
  // {} -> Map<String, dynamic>

  final cidadeMap = json.decode(cidadeJson);
  final cidadeList = json.decode(cidadeJsonList);

  if(cidadeMap is List) {
    print('É uma lista');
  
  } else if (cidadeMap is Map) {
    print('É um map');
  }

  print(cidadeMap.runtimeType);
  print(cidadeMap['nome']);
  
  cidadeList.forEach((city) => print(city['nome']));
  cidadeList.forEach((city) => print(city['regiao']['nome']));
  // print(cidadeMap[0].runtimeType);

  final cidadeMapJson = <String, dynamic>{
    'id': 123,
    'nome': 'Santo André',
    'uf': 'SP'
  };

  print(json.encode(cidadeMapJson));
  print(json.encode([cidadeMapJson]));

  final telefoneJson = '''
    {
      "ddd": 11,
      "telefone": "999999999"
    }
    ''';

    final telefone = Telefone.fromJson(telefoneJson);

    print(telefone.ddd);
    print(telefone.telefone);

    print(telefone.toJson());
    print(telefone.toMap());
}
