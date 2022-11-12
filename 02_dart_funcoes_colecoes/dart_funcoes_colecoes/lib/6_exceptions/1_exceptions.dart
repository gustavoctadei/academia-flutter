void main() {

  // var idade = '38 anos';
  var idade = '38';
  // int.parse(idade);
  String? nome;

  try {
    print('inicio');

    var idadeParse = int.parse(idade);
    //nome!.toLowerCase();

    if(idadeParse == 38) {
      throw Exception();
    }

    print('fim');
   
  } on FormatException catch(e, s) {
    print('Erro ao converter idade');
    print(e);
    print(s);
  
  } on TypeError {
    print('Erro ao converter idade');

  } on Exception {
    print('Erro idade == 38');
    
  } catch(e) {
    print(e);
    print('Erro ao executar programa');
  
  } finally {
    print('finally');
  }

}