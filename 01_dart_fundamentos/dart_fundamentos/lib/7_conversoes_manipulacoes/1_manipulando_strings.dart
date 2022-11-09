void main() {

  final nome = 'Rodrigo Rahman';

  var subStringNome = nome.substring(7);
  print(subStringNome);

   var subStringNome2 = nome.substring(0,7);
  print(subStringNome2);

  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0,1);
  print(sexoSigla);

  if(sexoSigla == 'M') {
    print('Olá, seu sexo é masculino');
  }

  if(sexo.startsWith('Mas')) {
    print('Olá, seu sexo é masculino');
  }

  if(sexo.toLowerCase().startsWith('mas')) {
    print('Olá, seu sexo é masculino minusculo');
  }

  if(sexo.toUpperCase().startsWith('MAS')) {
    print('Olá, seu sexo é masculino maiusculo');
  }

  if(nome.contains('Rahman')) {
    print('É da família Rahman');
  }

  if(nome.toLowerCase().contains('rahman')) {
    print('É da família Rahman');
  }

  // Interpolação

  var primeiroNome = 'Rodrigo';
  var ultimoNome = 'Rahman';

  var saudacao = 'Olá, ' + primeiroNome + ' ' + ultimoNome + ', seja muito bem vindo';
  print(saudacao);

  var saudacao2 = 'Olá, $primeiroNome $ultimoNome, seja muito bem vindo';
  print(saudacao2);

  print('Olá, $primeiroNome');
  print('Olá, ${primeiroNome.toLowerCase()}');

  print('Soma de 2 + 2 é ${2 + 2}');

  var paciente = 'Rodrigo Rahman|30|Especialista Dart e Flutter|SP';

  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);
  print(dadosPaciente[0]);
  print(dadosPaciente[1]);
  print(dadosPaciente[2]);
  print(dadosPaciente[3]);

  for(var dado in dadosPaciente) {
    print(dado);
  }

  // dadosPaciente.forEach(print);
  dadosPaciente.forEach((dado) => print(dado));

  var pacientes = [
    'Rodrigo Rahman|30|Especialista Dart e Flutter|SP',
    'Luana Rahman|30|Analista|SP',
    'Guilherme Rahman Silva|30|Analista|SP',
    'Joao Almeida|30|Analista|SP'
  ];

  for(paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    // print(dadosPaciente[0]);
    var nomeCompleto = dadosPaciente[0];
    var nomes = nomeCompleto.split(' ');

    // var ultimoNome = nomes.last;
    // print(ultimoNome);
    print(nomes.first);
    print(nomes.last);

    print('${nomes.first} ${nomes.last}');
  }


}