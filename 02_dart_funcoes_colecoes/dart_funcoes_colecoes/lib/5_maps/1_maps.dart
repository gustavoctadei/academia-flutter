void main() {

  // O mapa é uma representação chave: valor
  final paciente = <String, String>{
    'nome': 'Rodrigo Rahman',
    'curso': 'Academia do Flutter'
  };

  // O mapa pode ser nulo, mas se for criado deve conter a chave e valor nao nulos
  Map<String, String>? pacienteNullSafety = null;
  Map<String, String> pacienteNullSafety2 = {};
  
  // O mapa e o valor não podem ser nulos, mas a chave pode ser nula
  //Map<String?, String> pacienteNullSafety3 = {
  var pacienteNullSafety3 = <String?, String>{
    null: 'Rodrigo'
  };

  //O mapa e a chave não podem ser nulos, mas o valor pode ser nulo
  //Map<String, String?> pacienteNullSafety4 = {
  var pacienteNullSafety4 = <String, String?> {
    'nome': null
  };

  var produtos = <String, String>{};
  // Só será adicionado se a chave não existir
  produtos.putIfAbsent('nome', () => 'Cerveja');
  produtos.putIfAbsent('nome', () => 'Refrigerante');
  print(produtos);

  produtos.update('nome', (value) => 'Refrigerante');
  print(produtos);
  // produtos.update('preco', (value) => '10');
  produtos.update('preco', (value) => '10', ifAbsent: () => '10');

  // Recuperando o valor
  print('Produto ${produtos['nome']}');
  print('Preco ${produtos['preco']}');

  produtos.forEach((key, value) {
    print('Chave: $key: $value ');
  });

  // Fazer algum processo asyncrono dentro dele
  for(var entry in produtos.entries) {
    print('Chave: ${entry.key}: ${entry.value}');
  }

  for(var key in produtos.keys) {
    print('Chave: $key');
  }

  for(var value in produtos.values) {
    print('Valor: $value');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key + '_nova', value.toUpperCase());
  });
  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Rodrigo Rahman',
    'cursos': [{
      'nome': 'Academia do Flutter',
      'descricao': 'Melhor curso de Flutter do Brasil'
    },
    {
      'nome': 'Arquiteto do Flutter',
      'descricao': 'Melhor curso de Flutter do Brasil'
    }]
  };

  print(mapa['cursos']);
}