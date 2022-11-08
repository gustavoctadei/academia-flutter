void main () {
  final diaDaSemana = 0;

  var diaDaSemanaString = '';

  switch(diaDaSemana) {
    case 0:
      diaDaSemanaString = 'Domingo';
      break;

    case 1:
      diaDaSemanaString = 'Segunda-feira';
      break;

    default:
      diaDaSemanaString = 'Não identificado';
      break;
  }

  print(diaDaSemanaString);

  final idade = 20;

  switch(idade) {
    case 18:
    case 19:
      print('Maior de Idade');
      break;

    default:
      print('Menor de idade');
      break;
  }
}