// ignore_for_file: public_member_api_docs, sort_constructors_first
class Pessoa {
  String nome;
  String email;
  String telefone;
  
  Pessoa({
    required this.nome,
    required this.email,
    required this.telefone,
  });

  // @override
  // bool operator ==(Object other) {
  //   if(identical(this, other)) return true;

  //   if(other is Pessoa) {
  //     if(other.nome == nome) {
  //       if(other.email == email) {
  //         return true;
        
  //       } else {
  //         return false;
  //       }
  //     } else {
  //       return false;
  //     }
    
  //   } else {
  //     return false;
  //   }
  // }

  // @override
  // bool operator ==(Object other) {
  //   if ( identical(this, other) ) return true;

  //   bool isEquals = false;

  //   if (other is Pessoa) {
  //     if (other.nome == nome) {
  //       if (other.email == email) {
  //         isEquals = true;
  //       }
  //     }
  //   }

  //   return isEquals;
  // }

  // @override
  // bool operator ==(Object other) {
  //   if ( identical(this, other) ) return true;

  //   return other is Pessoa &&
  //   other.nome == nome &&
  //   other.email == email;
  // }

  // @override
  // int get hashCode {
  //   return nome.hashCode ^ email.hashCode;
  // }

  @override
  bool operator ==(covariant Pessoa other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome &&
      other.email == email &&
      other.telefone == telefone;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode ^ telefone.hashCode;

  @override
  String toString() => 'Pessoa(nome: $nome, email: $email, telefone: $telefone)';
}
