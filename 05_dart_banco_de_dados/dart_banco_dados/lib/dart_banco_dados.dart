import 'package:dart_banco_dados/database.dart';
import 'package:mysql1/mysql1.dart';

Future<void> main() async {

  final database = Database();
  var mySqlConnection = await database.openConnection();

  // await mySqlConnection.query(
  //   'insert into aluno (id, nome) values (?, ?)', 
  //   [
  //     null,
  //     'Rodrigo Rahman 2'
  //   ]
  // );

  var resultadoSelect = await mySqlConnection.query('select * from aluno');
  
  resultadoSelect.forEach((row) {
    print('Resultado por indice');
    print(row[0]);
    print(row[1]);

    print('Resultado pelo nome da coluna');
    print(row['id']);
    print(row['nome']);
  });

  await mySqlConnection.query('update aluno set nome = ? where id = ?',['Academia do Flutter', 1]);

  var resultadoSelectUnico = await mySqlConnection.query('select * from aluno where id = ?', [1]);
  print('Parametro unico');

  if(resultadoSelectUnico.isNotEmpty) {
    var rowUnico = resultadoSelectUnico.first;
    print('Resultado por indice');
    print(rowUnico[0]);
    print(rowUnico[1]);

    print('Resultado pelo nome da coluna');
    print(rowUnico['id']);
    print(rowUnico['nome']);
  }

  try {
    await mySqlConnection.query('update aluno set nome = ? where id = ?',[1.5, 'Academia do Flutter']);
  
  } on MySqlException catch(e, s) {
    print('Erro ao atualizador dados do aluno');
  }

  // await mySqlConnection.transaction((conn) {

  // });

}