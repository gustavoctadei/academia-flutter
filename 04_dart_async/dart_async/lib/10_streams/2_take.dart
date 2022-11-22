Future<void> main() async {

  print('Início');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  // take - quantas vezes a stream vai rodar
  stream = stream.take(5);

  // await for
  await for(var i in stream) {
    print(i);
  }

  print('Fim');
}

int callback(int value) {
  print('O Valor é $value');
  return (value + 1) * 2;
}