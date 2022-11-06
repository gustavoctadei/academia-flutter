void main () {
  // Operadores relacionais
  // Temos 6 tipos
  // == (igualdade), != (diferença), > (maior que), < (menor que), <= (menor ou igual), >= (maior ou igual)

  final idade = 18;
  final tipoPet = 'Gato';

  // Regra de negócio para tirar a habilitação
  if (idade == 18) {
    print('Pode tirar habilitação');
  }

  if (idade > 17) {
    print('Pode tirar habilitação');
  }

  if (idade >= 18) {
    print('Pode tirar habilitação');
  }

  if (tipoPet != 'Cachorro') {
    print('Desculpe, mas não temos nada para seu pet');
  }

}