void main() {

  var lista = ['Rodrigo'];
  print(lista);
  print(lista.hashCode);

  funcao(lista);
  print(lista);

  var nome = 'Rodrigo Rahman';
  print(nome);
  print(nome.hashCode);
  funcao2(nome);
  print(nome);

  var list = ['Rodrigo'];
  print(list);
  add(list);
  print(list);

  var listaProdutos = ['Produto1'];
  print(listaProdutos);
  var valor = calcularCarrinho(listaProdutos);
  print(valor);
  print(listaProdutos);

}

int calcularCarrinho(List<String> produtos) {
  produtos.clear();
  return 10;
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  // nomes.add('Rahman');
  if(nomes.isNotEmpty) {
    nomes.clear();
  }
}

void funcao2(String nome) {
  nome += 'Academia do Fluter';
  print(nome.hashCode);
}

List<String> add(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add('Rodrigo Rahman');
  print(novoNomes);
  return novoNomes;
  }