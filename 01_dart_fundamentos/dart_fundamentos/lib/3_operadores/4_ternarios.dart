void main () {
  final idade = 12;

  if(idade >= 18) {
    print('Maior de idade');
  
  } else {
    print('Menor de idade');
  }

  bool ehMaiorDeIdade2;

  if (idade >= 18) {
    ehMaiorDeIdade2 = true;
  
  } else {
    ehMaiorDeIdade2 = false;
  }
  print('Eh maior de idade? ' + ehMaiorDeIdade2.toString());

  // (condicao) ? faça algo : outra coisa
  final ehMaiorDeIdade = (idade >= 18 ? true : false);

  print('Eh maior de idade? ' + ehMaiorDeIdade.toString());

  print((idade < 13) ? 'Criança' : (idade > 12 && idade < 18) ? 'Adolescente' : 'Adulto');

  final ano = 2024;
  print((ano % 4 == 0 || ano % 400 == 0 || ano % 100 != 0) ? 'Bisexto' : 'Não é bisexto');
}