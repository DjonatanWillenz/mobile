import 'dart:convert';

class Propriedade {
  int idPropriedade;
  String nome;
  String descricao;
  DateTime dataCadastro;
  int idUsuario;
  bool ativo;
  
  Propriedade({
    this.idPropriedade,
    this.nome,
    this.descricao,
    this.dataCadastro,
    this.idUsuario,
    this.ativo,
  });

  Map<String, dynamic> toMap() {
    return {
      'idPropriedade': idPropriedade,
      'nome': nome,
      'descricao': descricao,
      'dataCadastro': dataCadastro.millisecondsSinceEpoch,
      'idUsuario': idUsuario,
      'ativo': ativo,
    };
  }

  factory Propriedade.fromMap(Map<String, dynamic> map) {
    return Propriedade(
      idPropriedade: map['idPropriedade'],
      nome: map['nome'],
      descricao: map['descricao'],
      dataCadastro: DateTime.fromMillisecondsSinceEpoch(map['dataCadastro']),
      idUsuario: map['idUsuario'],
      ativo: map['ativo'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Propriedade.fromJson(String source) =>
      Propriedade.fromMap(json.decode(source));
}
