import 'dart:convert';

import 'package:app/app/data/model/propriedade_model.dart';
import 'package:app/app/data/model/usuario_model.dart';

class Producao {
  int idProducao;
  String nome;
  double quantidadeEstoque;
  DateTime dataCadastro;
  Propriedade idPropriedade;
  Usuario idUsuario;
  String descricao;
  bool ativo;

  Producao({
    this.idProducao,
    this.nome,
    this.quantidadeEstoque,
    this.dataCadastro,
    this.idPropriedade,
    this.idUsuario,
    this.descricao,
    this.ativo,
  });

  Map<String, dynamic> toMap() {
    return {
      'idProducao': idProducao,
      'nome': nome,
      'quantidadeEstoque': quantidadeEstoque,
      'dataCadastro': dataCadastro.millisecondsSinceEpoch,
      'idPropriedade': idPropriedade.toMap(),
      'idUsuario': idUsuario.toMap(),
      'descricao': descricao,
      'ativo': ativo,
    };
  }

  factory Producao.fromMap(Map<String, dynamic> map) {
    return Producao(
      idProducao: map['idProducao'],
      nome: map['nome'],
      quantidadeEstoque: map['quantidadeEstoque'],
      dataCadastro: DateTime.fromMillisecondsSinceEpoch(map['dataCadastro']),
      idPropriedade: Propriedade.fromMap(map['idPropriedade']),
      idUsuario: Usuario.fromMap(map['idUsuario']),
      descricao: map['descricao'],
      ativo: map['ativo'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Producao.fromJson(String source) =>
      Producao.fromMap(json.decode(source));
}
