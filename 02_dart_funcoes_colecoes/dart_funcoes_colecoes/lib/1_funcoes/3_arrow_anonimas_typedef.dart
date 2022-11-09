void main() {
  // Funcoes Arrow - Ok
  // Funcoes Anonimas - Ok
  // Typedef - Ok

  var nome = '';
  var idade = 1;
  var funcaoQualquer = (){
    print('Chamou a função da variável');
    return '2000';
  };

  print(funcaoQualquer);
  print(funcaoQualquer());

  
  
  // (){
  //   print('Funcao anonima');
  // }();
  
  print(somaInteiros(10, 10));

  // Não está invocando a função
  somaInteiros;

  print('Iniciando chamada');
  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('Nome veio vazio');
    }

    else {
      print(nome);
    }
  });
  print('Finalizando chamada');

  funx2((nome, nomeCompleto, {qq, x, x2}) => '');

}

// 3 partes
// 1 - tipo de retorno
// 2 - nome
// 3 - parametros (normais, nomeados e opcionais)
int somaInteiros(int numero1, int numero2) => numero1 + numero2;
void somaInteirosVoid(int numero1, int numero2) => numero1 + numero2;

void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeONome) {
  var calcula = 1 + 1;
  var nomeCompleto = 'Rodrigo Rahman';
  print('finalizando a funcao chamarUmaFuncaoDeUmParametro');
  print('invocando funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

void chamarUmaFuncaoDeUmParametro1(FuncaoQueRecebeNome funcaoQueRecebeONome) {
  var calcula = 1 + 1;
  var nomeCompleto = 'Rodrigo Rahman';
  print('finalizando a funcao chamarUmaFuncaoDeUmParametro');
  print('invocando funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

void chamarUmaFuncaoDeUmParametro2(FuncaoQueRecebeNome funcaoQueRecebeONome) {
  var calcula = 1 + 1;
  var nomeCompleto = 'Rodrigo Rahman';
  print('finalizando a funcao chamarUmaFuncaoDeUmParametro');
  print('invocando funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

void funx(String Function(
  String nome, 
  String nomeCompleto, {
    required String? x,
    required String? x2,
    int? qq
  }) nome){}

void funx2(FuncaoQueRecebeNomeComplexo nome){}

typedef FuncaoQueRecebeNome = void Function(String nome);
typedef FuncaoQueRecebeNomeComplexo = String Function(
  String nome, 
  String nomeCompleto, {
    required String? x,
    required String? x2,
    int? qq
  });