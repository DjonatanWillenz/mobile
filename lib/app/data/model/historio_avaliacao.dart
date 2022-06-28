import 'dart:convert';

import 'package:app/app/data/model/animal_model.dart';
import 'package:app/app/data/model/propriedade_model.dart';

class HistoricoAvalicao {
  int idHistorio;
  DateTime data;
  Propriedade idPropriedade;
  Animal idAnimal;
  String descricao;
  int avaliacao;

  HistoricoAvalicao({
    this.idHistorio,
    this.data,
    this.idPropriedade,
    this.idAnimal,
    this.descricao,
    this.avaliacao,
  });

  Map<String, dynamic> toMap() {
    return {
      'idHistorio': idHistorio,
      'data': data.millisecondsSinceEpoch,
      'idPropriedade': idPropriedade.toMap(),
      'idAnimal': idAnimal.toMap(),
      'descricao': descricao,
      'avaliacao': avaliacao,
    };
  }

  factory HistoricoAvalicao.fromMap(Map<String, dynamic> map) {
    return HistoricoAvalicao(
      idHistorio: map['idHistorio'],
      data: DateTime.fromMillisecondsSinceEpoch(map['data']),
      idPropriedade: Propriedade.fromMap(map['idPropriedade']),
      idAnimal: Animal.fromMap(map['idAnimal']),
      descricao: map['descricao'],
      avaliacao: map['avaliacao'],
    );
  }

  String toJson() => json.encode(toMap());

  factory HistoricoAvalicao.fromJson(String source) =>
      HistoricoAvalicao.fromMap(json.decode(source));
}
