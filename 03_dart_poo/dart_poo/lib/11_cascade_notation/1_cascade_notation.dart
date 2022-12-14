void main() {

  // var pessoa = Pessoa()
  Pessoa()
    ..nome = 'Rodrigo Rahman'
    ..email = 'rodrigorahman@academiadoflutter.com.br'
    ..site = 'academiadoflutter.com.br'
    ..printPessoa();

  // pessoa.nome = 'Rodrigo Rahman';
  // pessoa.email = 'rodrigorahman@academiadoflutter.com.br';
  // pessoa.site = 'academiadoflutter.com.br';

  var mapa = Map<String, String>()
    ..putIfAbsent('nome', () => 'Rodrigo')
    ..putIfAbsent('email', () => 'null')
    ..putIfAbsent('site', () => '');

  // print('''
  //   Pessoa:
  //     Nome: ${pessoa.nome}
  //     Email: ${pessoa.email}
  //     Site: ${pessoa.site}
  // ''');

}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() {
    print('''
    Pessoa:
      Nome: ${nome}
      Email: ${email}
      Site: ${site}
  ''');
  }
}