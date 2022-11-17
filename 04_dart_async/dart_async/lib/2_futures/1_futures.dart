void main() {

  print('inicio do p1');
  processo2();
  
  // dois status: Incompleto ou concluido (com valor ou com erro)

  // Concluido com valor -> Then
  // Concluido com erro -> CatchError ou OnError
  // WhenComplete sempre será executado!!!
  
  processo3()
    .then((mensagem) {
      print(mensagem);
    });

  processo4()
    .then((mensagem) => print('Mensagem do P4 $mensagem'))
    .catchError((erro) => print('Erro ao executar o processo 4'))
    .whenComplete(() => print('Finalizou com erro')); // Parecido com o finally do try-catch, sempre executa quando conclui (com ou sem erro)
  
  processo4()
    .then((mensagem) => print('Mensagem do P4 $mensagem'),
    onError: (error) {
      print('Tratando o erro pelo onError do then');
    });

  // processo3()
  //   .then((mensagem) {
  //     // throw Exception();
  //   }, onError: (error) {
  //     print('Erro de dentro do then');
  //   });
  
  // processo4()
  //   .then((mensagem) => print('Mensagem do P4 $mensagem'),
  //   onError: (error) {
  //     print('Tratando o erro pelo onError do then');
  //   });

    processo3().then((value) => print(value))
      .whenComplete(() => print('Finalizou com sucesso'));
  
  print('fim do p1');
}

Future<String> processo4() {
  print('Inicio P4');

  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}

Future<String> processo3() {
  print('Inicio P3');

  return Future.delayed(Duration(seconds: 1), () => 'Fim do P3');
  // return Future.delayed(Duration(seconds: 3), () => 'Fim do P3');
}

Future<void> processo2() async {
  print('Inicio do P2');

  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while(i < 3) {
      print(i);
      i++;
    }

    print('Fim do p2');
  });
}