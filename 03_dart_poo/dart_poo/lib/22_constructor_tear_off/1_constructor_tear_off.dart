void main() {

  final nomes = ['Rodrigo', 'Guilherme', 'Renato', 'Sandra'];

  final pessoas_antigo = nomes.map((nome) => Pessoa(nome)).toList();

  // final pessoas = nomes.map<Pessoa>(Pessoa.nome).toList();
  // final pessoas = nomes.map<Pessoa>(Pessoa.new).toList();
  final pessoas = nomes.map<Pessoa>(Pessoa.fromJson).toList();

  for(var pessoa in pessoas) {
    print('Olá ${pessoa.nome}');
  }

  funcaoQualquer(Pessoa.new);

}

// void funcaoQualquer(dynamic Function(String) funcao) {
// void funcaoQualquer(Object Function(String) funcao) {
// void funcaoQualquer(Pessoa Function(String) funcao) {
void funcaoQualquer(Pessoa Function(String) funcao) {
  funcao('Rodrigo');
}

class Pessoa {
  String nome;

  Pessoa(this.nome);

  Pessoa.nome(this.nome);

  factory Pessoa.fromJson(String nome) {
    return Pessoa(nome);
  }
}