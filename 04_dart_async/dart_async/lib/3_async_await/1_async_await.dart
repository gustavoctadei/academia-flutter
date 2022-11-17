Future<void> main() async {

  // processo1()
  //   .then((mensagem) {
  //     processo2()
  //       .then((mensagem) => print(mensagem))
  //       .catchError((error) => print(error));

  //     print('Mensagem é $mensagem');
    
  //   }).catchError((error) {
  //     print(error);
  //   });
  try {
    print('Inicio do main');
  
    var mensagem = await processo1();
    print(mensagem);
    
    var mensagem2 = await processo2();
    print(mensagem2);

    await processo3();
  
  } on Exception catch(e) {
    print('Erro na chamada do processo3 $e');
  }
  
  print('Fim do main');

}

Future<String> processo1() {
  print('Inicio P1');

  return Future.delayed(Duration(seconds: 1), () => 'Fim do P1');
}

Future<String> processo2() {
  print('Inicio P2');

  return Future.delayed(Duration(seconds: 1), () => 'Fim do P2');
}

Future<String> processo3() {
  print('Inicio P3');

  return Future.delayed(Duration(seconds: 1), () => throw Exception());
}