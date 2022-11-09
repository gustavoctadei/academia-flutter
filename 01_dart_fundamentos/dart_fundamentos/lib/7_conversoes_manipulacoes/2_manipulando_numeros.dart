void main() {

  final idade = 30;

  print(idade);
  print(idade.toString());
  // print('Sua idade é ' + idade); // Não funciona
  print('Sua idade é: ' + idade.toString());
  print('Sua idade é: $idade');

  final valor = -10;

  if(valor.isNegative) {
    print(valor);
  }

  final valorDouble = 10.65;

  print(valorDouble.round());
  print(valorDouble.roundToDouble());

   final valorCerto = '30';
  final valorErrado = 'Rodrigo';

  final valorInt = int.parse(valorCerto);
  final valorInt2 = int.tryParse(valorErrado);
  print(valorInt);
  print(valorInt2); // retorna nullable

  // print('O valor é ${valorInt2 + 2}'); //Não funciona pois a variável é nullable

  if(valorInt2 != null) {
    print('O valor é ${valorInt2 + 2}');
  }

  final precoCamiseta = 30.27876;
  print(precoCamiseta.toStringAsFixed(2));

  print(double.parse('30.28'));
  print(double.tryParse('Teste'));
  print(double.tryParse('30.28'));

}