import 'dart:convert';

import 'package:app/app/data/model/animal_model.dart';
import 'package:app/app/data/model/propriedade_model.dart';

class Semen {
  int idSemen;
  Animal idAnimal;
  Propriedade idPropriedade;
  DateTime data;
  String descricao;
  int quantidade;

  Semen({
    this.idSemen,
    this.idAnimal,
    this.idPropriedade,
    this.data,
    this.descricao,
    this.quantidade,
  });

  Map<String, dynamic> toMap() {
    return {
      'idSemen': idSemen,
      'idAnimal': idAnimal.toMap(),
      'idPropriedade': idPropriedade.toMap(),
      'data': data.millisecondsSinceEpoch,
      'descricao': descricao,
      'quantidade': quantidade,
    };
  }

  factory Semen.fromMap(Map<String, dynamic> map) {
    return Semen(
      idSemen: map['idSemen'],
      idAnimal: Animal.fromMap(map['idAnimal']),
      idPropriedade: Propriedade.fromMap(map['idPropriedade']),
      data: DateTime.fromMillisecondsSinceEpoch(map['data']),
      descricao: map['descricao'],
      quantidade: map['quantidade'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Semen.fromJson(String source) => Semen.fromMap(json.decode(source));
}
