Future<void> main() async {

  var nomes = ['Rodrigo', 'Luana', 'Guilherme'];

  print('Inicio');

  await Future.forEach<String>(nomes, (nome) async {
    print(await saudacao(nome));
  });

  for (var nome in nomes) {
    print(await saudacao(nome));
  }

  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();
  var saudacoes = await Future.wait(nomesFuturo);
  print(saudacoes);

  var nomesFuturosNaMao = [saudacao('Rodrigo'), saudacao('Luana'), saudacao('Guilherme')];
  var saudacoesNaMao = await Future.wait(nomesFuturosNaMao);
  print(saudacoesNaMao);

  // nomes.forEach((nome) async {
  //   print(await saudacao(nome));
  // });
  print('Fim');

}

Future<String> saudacao(String nome) {
  print('Inicio $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print('Fim $nome');
    return 'Olá $nome';
  });
}

































// Colocar async quando o retorno for void
Future<void> p1() async {
  await saudacao('nome');
}

// Colocar o async quando tiver um await dentro do método/função
Future<String> p2() async {
  await saudacao('');
  return Future.value();
}
Future<String> p3() {
  saudacao('');
  return Future.value();
}