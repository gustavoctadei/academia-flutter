void main() {
  String nomeCompleto = 'Gustavo Tadei';
  print(nomeCompleto);

  nomeCompleto = 'Gustavo Tadei';
  print(nomeCompleto);

  // Variáveis finais:
  // Não podem ser alteradas depois de inicializadas (imutáveis)
  // São definidas no programa em tempo de execução (runtimes)
  // Utilize sem moderação
  final nomeCompletoFinal = 'Gustavo Tadei';
  //nomeCompletoFinal = 'Gustavo'; //Variáveis finais não podem ter seu valor modificado, são imutáveis
  final nomeCompletoFinal2 = nomeCompleto;

  // Variáveis const:
  // Não podem ser alteradas depois de inicializadas (imutáveis)
  // São definidas no programa em tempo de compilação!
  // Não podem receber valores de outras variáveis a não ser que essas variáveis forem const também
  // Utilize sem moderação
  const nomeCompletoConst = 'Gustavo Tadei';
  //const nomeCompletoConst2 = nomeCompleto;

}