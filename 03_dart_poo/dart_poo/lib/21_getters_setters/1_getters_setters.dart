void main() {

  var pessoa = Pessoa();
  pessoa.nome = 'Rodrigo Rahman';
  print(pessoa.nome);
  // pessoa.setNome('Rodrigo Rahman');

}

class Pessoa {
  String? _nome;

  String? get nome => _nome;
  
  set nome(String? nome) {
    if(nome != null && nome.length > 3) {
      _nome = nome;
    }
  }
  
}