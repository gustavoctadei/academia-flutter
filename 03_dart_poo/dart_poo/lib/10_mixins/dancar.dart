import 'artista.dart';

mixin Dancar on Artista {

  String dancar() {
    return 'Dança forró';
  }

  @override
  String habilidade() {
    return 'Dançar';
  }

}