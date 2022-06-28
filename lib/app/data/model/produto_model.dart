import 'dart:convert';

import 'package:app/app/data/model/propriedade_model.dart';
import 'package:app/app/data/model/usuario_model.dart';

class Produto {
  int idProduto;
  double quantidadeEstoque;
  DateTime dataCadastro;
  Propriedade idPropriedade;
  Usuario idUsuario;
  String descricao;
  bool ativo;
  
  Produto({
    this.idProduto,
    this.quantidadeEstoque,
    this.dataCadastro,
    this.idPropriedade,
    this.idUsuario,
    this.descricao,
    this.ativo,
  });

  Map<String, dynamic> toMap() {
    return {
      'idProduto': idProduto,
      'quantidadeEstoque': quantidadeEstoque,
      'dataCadastro': dataCadastro.millisecondsSinceEpoch,
      'idPropriedade': idPropriedade.toMap(),
      'idUsuario': idUsuario.toMap(),
      'descricao': descricao,
      'ativo': ativo,
    };
  }

  factory Produto.fromMap(Map<String, dynamic> map) {
    return Produto(
      idProduto: map['idProduto'],
      quantidadeEstoque: map['quantidadeEstoque'],
      dataCadastro: DateTime.fromMillisecondsSinceEpoch(map['dataCadastro']),
      idPropriedade: Propriedade.fromMap(map['idPropriedade']),
      idUsuario: Usuario.fromMap(map['idUsuario']),
      descricao: map['descricao'],
      ativo: map['ativo'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Produto.fromJson(String source) =>
      Produto.fromMap(json.decode(source));
}
