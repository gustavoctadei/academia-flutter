void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];
  
  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  //1
  print('Pacientes com mais de 20 anos');
  for(var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');

    var nome = dadosPaciente[0];
    var idade = int.tryParse(dadosPaciente[1]);

    if(idade != null && idade > 20) {
      print(nome);
    }
  }

  //2
  print('Quantidade de pacientes para cada profissão');

  var quantidadeDesenvolvedor = 0;
  var quantidadeEstudante = 0;
  var quantidadeDentista = 0;
  var quantidadeJornalista = 0;

  for(var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');

    var profissao = dadosPaciente[2].toLowerCase();

    switch(profissao) {
      case 'desenvolvedor':
        quantidadeDesenvolvedor += 1;
        break;

      case 'estudante':
        quantidadeEstudante += 1;
        break;

      case 'dentista':
        quantidadeDentista += 1;
        break;

      case 'jornalista':
        quantidadeJornalista += 1;
        break;

      default:
        print('Profissão não reconhecida pelo sistema');
        break;
    }
  }

  print('Desenvolvedor: $quantidadeDesenvolvedor');
  print('Estudante: $quantidadeEstudante');
  print('Dentista: $quantidadeDentista');
  print('Jornalista: $quantidadeJornalista');

  //3
  var quantidadePacientesMoramEmSaoPaulo = 0;

  for(var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    
    var estadoMoradia = dadosPaciente[3].toUpperCase();

    if(estadoMoradia == 'SP') {
      quantidadePacientesMoramEmSaoPaulo += 1;
    }

  }

  print('$quantidadePacientesMoramEmSaoPaulo pacientes moram em SP');

}
