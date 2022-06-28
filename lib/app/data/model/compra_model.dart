import 'dart:convert';

import 'package:app/app/data/model/propriedade_model.dart';

class Compra {
  int idCompra;
  Propriedade idPropriedade;
  double valor;
  DateTime data;
  String descricao;
  Propriedade idProduto;

  Compra({
    this.idCompra,
    this.idPropriedade,
    this.valor,
    this.data,
    this.descricao,
    this.idProduto,
  });

  Map<String, dynamic> toMap() {
    return {
      'idCompra': idCompra,
      'idPropriedade': idPropriedade.toMap(),
      'valor': valor,
      'data': data.millisecondsSinceEpoch,
      'descricao': descricao,
      'idProduto': idProduto.toMap(),
    };
  }

  factory Compra.fromMap(Map<String, dynamic> map) {
    return Compra(
      idCompra: map['idCompra'],
      idPropriedade: Propriedade.fromMap(map['idPropriedade']),
      valor: map['valor'],
      data: DateTime.fromMillisecondsSinceEpoch(map['data']),
      descricao: map['descricao'],
      idProduto: Propriedade.fromMap(map['idProduto']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Compra.fromJson(String source) => Compra.fromMap(json.decode(source));
}
