void main() {
  // Parametros obrigatórios por default

  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');

  // Parametros Nomeados
  // Parametros Nomeados são nullables por default
  // Parametros Nomeados podem ser promovidos para non-null com checagem de null
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero1: 10.2, numero2: 10.2)}');
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero2: 10.2, numero1: 10.2)}');
  
  print('A soma de 5.2 + 10.2 é ${somaDoublesObrigatorios(numero2: 5.2, numero1: 10.2)}');
  
  print('A soma de 10.2 + 10.2 é ${somaDoublesObrigatorios2(numero1: null, numero2: 10)}');
  
  print('Soma doubles default é  ${somaDoublesDefault()}');
  print('Soma doubles default é  ${somaDoublesDefault(numero1: 10)}');

  // Parametro Opcional
  print('Soma int opcional  ${somaIntOpcional()}');
  print('Soma int opcional  ${somaIntOpcional(1)}');
  print('Soma int opcional  ${somaIntOpcional(1,1)}');

  parametrosNormaisComNomeados(1, nome: 'Rodrigo', idade: 37);
  
  parametrosNormaisComNomeados2(1, 'Rodrigo Rahman', 37);

}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

//
double somaDoubles({double? numero1, double? numero2}) {
  if(numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }

  return 0.0;
}

double somaDoublesObrigatorios(
  {required double numero1, required double numero2}) {
    return numero1 + numero2;
}

double somaDoublesObrigatorios2(
  {required double? numero1, required double numero2}) {
    numero1 ??= 0; //se for nulo atribui zero, se não for, ignora e mantém o valor original da variável
    // if(numero1 == null) {
    //   numero1 = 0;
    // }

  return numero1 + numero2;
}

double somaDoublesDefault({double numero1 = 0, double numero2 = 0}) {
    return numero1 + numero2;
}

int somaIntOpcional([int numero1 = 0, int numero2 = 0]) {
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(int numero, {required String nome, required int idade}) {}
void parametrosNormaisComNomeados2(int numero, [String? nome, int? idade]) {}
void parametrosNormaisComNomeados3(int numero1, int numero2, [String? nome, int? idade]) {}
// void parametrosNormaisComNomeados3([String? nome, int? idade], int numero1, int numero2) {} //Parametros nomeados ou opcionais devem vir depois dos parametros simples