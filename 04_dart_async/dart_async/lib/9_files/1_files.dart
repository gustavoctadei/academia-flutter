import 'dart:io';

Future<void> main() async {

  var file = File('lib/9_files/files/file.txt');

  // Leitura Sincrona
  var fileData = file.readAsStringSync();
  print(fileData);

  // Leitura Assincrona
  var fileData2 = await file.readAsString();
  print(fileData2);

  // Leitura linha Sincrona
  var fileLista = file.readAsLinesSync();
  print(fileLista[0]);
  print(fileLista[1]);

  // Leitura linha Assincrona
  var fileLista2 = await file.readAsLines();
  print(fileLista2[0]);
  print(fileLista2[1]);

  var file2 = File('lib/9_files/files/file2.txt');
  await file2.writeAsString('Academia do Flutter\n', mode: FileMode.append);
  file2.writeAsStringSync('Academia do Flutter\n', mode: FileMode.append);

  var listaNomes = ['Rodrigo Rahman', 'Luana', 'João'];
  var file3 = File('lib/9_files/files/file3.txt');
  // var writeFile = file3.openWrite();
  var writeFile = file3.openWrite(mode: FileMode.append);

  listaNomes.forEach((nome) => writeFile.write('$nome\n'));

}