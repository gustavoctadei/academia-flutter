void main () {
  // Operadores Lógicos
  // && (E), || (Ou), !(Não)

  final sexo = 'M';
  final idade = 18;
  final nome = 'Gustavo';

  // if (sexo == 'M') {
  //   if (idade >= 18) {
  //     print('Pode entrar!!!');
    
  //   } else {
  //     print('Não pode entrar!!!');
  //   }
  
  // } else {
  //   print('Não pode entrar');
  // }

  // True E True
  if (sexo == 'M' && idade >= 18) {
    print('Pode entrar!!!');
  
  } else {
    print('Não pode entrar!!!');
  }

  // Operador || uma das condições precisa ser verdade
  // True && False = true
  // False && True = true
  // True e True = true
  // False e False = false
  if (sexo == 'M' || idade >= 18) {
    print('Pode entrar!!!');
  
  } else {
    print('Não pode entrar!!!');
  }

  if ( !(sexo == 'M' && idade >= 18) ) {
    print('Pode entrar!!!');
  
  } else {
    print('Não pode entrar!!!');
  }

  if ( !(nome == 'Gustavo') ) {
    print('Não é Gustavo');
  }


}