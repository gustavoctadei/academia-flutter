void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  // Expand
  // Array bidimensional
  var lista = [
    [1, 2],
    [3, 4]
  ];

  print(lista[0][0]);
  print(lista[0][1]);

  // var listaNova = [...lista[0], ...lista[1]];
  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  // Any
  print('.any');
  final listaBusca = ['Rodrigo', 'João', 'José'];
  if(listaBusca.any((nome) => nome == 'João')) {
    print('Tem João');
  
  } else {
    print('Não tem João');
  }

  // Every
  print('.every');
  final listaBusca2 = ['Rodrigo', 'João', 'José'];

  if(listaBusca2.every((nome) => nome.contains('J'))) {
    print('Todos os nomes tem e letra J');
  
  } else {
    print('Nem todos os nomes tem a letra J');
  }

  if(listaBusca2.every((nome) => nome.contains('o'))) {
    print('Todos os nomes tem e letra o');
  
  } else {
    print('Nem todos os nomes tem a letra o');
  }

  // .sort
  print('.sort');

  var listaParaOrdenacao = [99, 22, 10, 9, 0765, 1, 2, 3, 100, 300];

  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomesOrdenacao = ['Rodrigo', 'João', 'José', 'André', 'Arthur'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  var listaPacientes = [
    'Rodrigo Rahman|37',
    'Luana  Rahman|35',
    'Guilherme|18',
    'Arthur|5',
    'Antonio|50'
  ];

  var novaListaPacientes = [...listaPacientes];


  novaListaPacientes.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if(idadePaciente1 > idadePaciente2) {
      return 1;
    
    } else if(idadePaciente1 == idadePaciente2) {
      return 0;
    
    } else {
      return -1;
    }
  });
  print(listaPacientes);
  print(novaListaPacientes);

  //CompareTo
  print('.sort com CompareTo');
  var listaPacientes2 = [
    'Rodrigo Rahman|37',
    'Luana  Rahman|35',
    'Guilherme|18',
    'Arthur|5',
    'Antonio|50'
  ];

  listaPacientes2.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);

  // Pacientes por função
  final listaPacientes3 = [
    'Rodrigo Rahman|37',
    'Luana  Rahman|35',
    'Guilherme|18',
    'Arthur|5',
    'Antonio|50'
  ];
  print('Antes');
  print(listaPacientes3);
  funcaoQualquer(listaPacientes3);
  print('Depois');
  print(listaPacientes3);

}

void printAcademia(int valor) {
  print(valor);
}

void funcaoQualquer(List<String> pacientes) {
  final localPacientes = [...pacientes];

  localPacientes.sort((paciente1, paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });

  print(localPacientes);
}