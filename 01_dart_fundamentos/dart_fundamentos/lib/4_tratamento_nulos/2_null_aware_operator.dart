String? nome;

void main() {
  
  var nomeCompleto = ( (nome != null) ? nome! + ' Tadei' : 'Gustavo Tadei' );
  print(nomeCompleto);

  String nomeCompleto2;

  if (nome != null) {
    nomeCompleto2 = nome! + ' Tadei';
  
  } else {
    nomeCompleto2 = 'Gustavo Tadei';
  }

  print(nomeCompleto2);

  var nomeLocal = nome;

  if (nomeLocal == null) {
    nomeLocal = 'Gustavo Tadei';
  }

  var nomeCompleto3 = nomeLocal + ' Tadei';

  print(nomeCompleto3);

  
}