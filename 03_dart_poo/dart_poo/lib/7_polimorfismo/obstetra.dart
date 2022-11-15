import 'package:dart_poo/7_polimorfismo/medico.dart';

class Obstetra extends Medico {
  @override
  void operar() {
    // Preparar o paciente
    print('Preparar o paciente');
    // Nascimento do bebê
    print('Nascimento do bebê');
  }

}