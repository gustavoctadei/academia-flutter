import 'package:dart_poo/7_polimorfismo/medico.dart';

class Anestesista extends Medico {
  @override
  void operar() {
    // Preparar e esterilizar os equipamentos
    print('Preparar e esterilizar os equipamentos');
    // Anestesiar a paciente
    print('Anestesiar a paciente');
  }

}