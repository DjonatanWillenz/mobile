import 'dart:convert';

class Usuario {
  int idUsuario;
  String nome;
  String email;
  String senha;
  String dataCadastro;
  String dataEdicao;
  String telefone;
  int ativo;

  Usuario(
      {this.idUsuario,
      this.nome,
      this.email,
      this.senha,
      this.dataCadastro,
      this.dataEdicao,
      this.telefone,
      this.ativo});
      
  Map<String, dynamic> toMap() {
    return {
      'idUsuario': idUsuario,
      'nome': nome,
      'email': email,
      'senha': senha,
      'dataCadastro': dataCadastro,
      'dataEdicao': dataEdicao,
      'telefone': telefone,
      'ativo': ativo,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      idUsuario: map['idUsuario'],
      nome: map['nome'],
      email: map['email'],
      senha: map['senha'],
      dataCadastro: map['dataCadastro'],
      dataEdicao: map['dataEdicao'],
      telefone: map['telefone'],
      ativo: map['ativo'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Usuario.fromJson(String source) =>
      Usuario.fromMap(json.decode(source));
}
