import 'dart:convert';

import 'package:app/app/data/model/animal_model.dart';

class Inseminacao {
  int idInseminacao;
  DateTime data;
  Animal idAnimal;
  String descricao;

  Inseminacao({
    this.idInseminacao,
    this.data,
    this.idAnimal,
    this.descricao,
  });

  Map<String, dynamic> toMap() {
    return {
      'idInseminacao': idInseminacao,
      'data': data.millisecondsSinceEpoch,
      'idAnimal': idAnimal.toMap(),
      'descricao': descricao,
    };
  }

  factory Inseminacao.fromMap(Map<String, dynamic> map) {
    return Inseminacao(
      idInseminacao: map['idInseminacao'],
      data: DateTime.fromMillisecondsSinceEpoch(map['data']),
      idAnimal: Animal.fromMap(map['idAnimal']),
      descricao: map['descricao'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Inseminacao.fromJson(String source) =>
      Inseminacao.fromMap(json.decode(source));
}
