import 'dart:convert';

import 'package:app/app/data/model/produto_model.dart';
import 'package:app/app/data/model/propriedade_model.dart';

class Venda {
  int idVenda;
  DateTime data;
  double valorTotal;
  Propriedade idPropriedade;
  Produto idProduto;

  Venda({
    this.idVenda,
    this.data,
    this.valorTotal,
    this.idPropriedade,
    this.idProduto,
  });

  Map<String, dynamic> toMap() {
    return {
      'idVenda': idVenda,
      'data': data.millisecondsSinceEpoch,
      'valorTotal': valorTotal,
      'idPropriedade': idPropriedade.toMap(),
      'idProduto': idProduto.toMap(),
    };
  }

  factory Venda.fromMap(Map<String, dynamic> map) {
    return Venda(
      idVenda: map['idVenda'],
      data: DateTime.fromMillisecondsSinceEpoch(map['data']),
      valorTotal: map['valorTotal'],
      idPropriedade: Propriedade.fromMap(map['idPropriedade']),
      idProduto: Produto.fromMap(map['idProduto']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Venda.fromJson(String source) => Venda.fromMap(json.decode(source));
}
