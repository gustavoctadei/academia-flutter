String? nome;

void main() {
  // = -= /= %= >>= ^=
  // += *= ~= <<= &= =

  var numero = 1;
  print(numero);
  // numero = numero + 2;
  numero += 2; // numero = numero + 2
  numero = numero -= 2; //numero = numero - 2
  print(numero);

  var numero2 = 2.0;
  numero2 /= 1.0;

  print(numero2);

  print(nome);
  // nome = 'Guilherme';

  nome ??= 'Rodrigo Rahman'; //Se nome for null, atribui, se não for null, mantém o valor
  // if(nome == null) {
  //   nome = 'Rodrigo Rahman';
  // }

  print(nome);
}