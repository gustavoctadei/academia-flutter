void main() {
  // ? = Nullable (Aceita nulo)
  // Sem nada (padrão) = non-null (Não aceita nulo)

  //Não aceita nulo
  // List<String> nomes = [];
  List<String> nomes = <String>[];
  
  //Aceita nulo
  List<String>? nomesNulos;
  
  // Nem a lista e nem os itens podem ser nulos
  List<String> nomesInternosNaoAceitaNulos = [''];
  var nomesInternosNaoAceitaNulos1 = [''];

  //Nomes podem ser nulos, mas a lista não
  List<String?> nomesInternosAceitaNulos = [null];
  var nomesInternosAceitaNulos1 = <String?>[null];

  // Lista pode ser nula e os itens também podem ser nulos
  List<String?>? nomesInternosAceitaNulos2 = [null];
  List<String?>? nomesInternosAceitaNulos3 = null;


}