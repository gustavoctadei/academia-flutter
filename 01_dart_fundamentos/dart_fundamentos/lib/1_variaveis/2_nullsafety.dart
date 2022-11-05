// Variáveis de nível superior não podem ser inicializadas depois
// Não é permitido
//String nomeCompletoSuperior;

String nomeCompletoSuperior = 'Gustavo Tadei';
String? nomeCompletoSuperiorOpc;

void main() {
  
  //String? nomeCompleto = null; //Evitar variáveis nullables (operador ?)
  
  // Variáveis locais não precisam ser inicializadas quando forem declaradas
  // Podem ser criadas e receberem um valor depois
  String nomeCompleto;
  String? nomeCompletoOpc;

  // Variáveis locais que são nulas (nullable) por padrão
  // Se for atribuido um valor a ela, automaticamente elas são
  // Promovidas a não nulo (non-null)
  nomeCompleto = 'Gustavo Tadei';
  print(nomeCompleto.length);

  nomeCompletoOpc = 'Gustavo Tadei';
  print(nomeCompletoOpc.length);

  // variáveis de nível superior NUNCA são promovidas para não nula (non-null)
  nomeCompletoSuperiorOpc = '';
  //print(nomeCompletoSuperiorOpc.length); //Variáveis de nível superior não podem ser promovidas de null para não null

  //print(nomeCompleto!.length); //Evitar utilizar o !

}