String? nome;

void main() {
  
  var sobrenome = 'Tadei';
  
  //var nomeCompleto = ( (nome != null) ? nome! + ' Tadei' : 'Gustavo Tadei' );
  var nomeCompleto = (nome ?? 'Gustavo') + sobrenome;

  String? nomeCompleto2;

  // if (true) {
  //   nomeCompleto2 = 'Gustavo Tadei';
  // }

  print(nomeCompleto2 ?? 'Gustavo Tadei');
  
}