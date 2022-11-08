String? nomeSuperior;

void main() {
  String nome = '';
  String? nomeNull;

  if (nomeNull != null) {
    nomeNull.isEmpty;
  }

  nome.isEmpty;

  var nomeLocal = nomeSuperior;
  if (nomeLocal != null) {
    nomeLocal.isEmpty;
    //nomeSuperior.isEmpty;
  }

  //nomeSuperior.isEmpty;

  nomeSuperior = '';

  nomeSuperior!.isEmpty;
}