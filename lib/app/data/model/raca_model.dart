import 'dart:convert';

import 'package:app/app/data/model/propriedade_model.dart';

class Raca {
  int idRaca;
  Propriedade idPropriedade;
  String nome;
  int codigo;
  String descricao;
  
  Raca({
    this.idRaca,
    this.idPropriedade,
    this.nome,
    this.codigo,
    this.descricao,
  });

  Map<String, dynamic> toMap() {
    return {
      'idRaca': idRaca,
      'idPropriedade': idPropriedade.toMap(),
      'nome': nome,
      'codigo': codigo,
      'descricao': descricao,
    };
  }

  factory Raca.fromMap(Map<String, dynamic> map) {
    return Raca(
      idRaca: map['idRaca'],
      idPropriedade: Propriedade.fromMap(map['idPropriedade']),
      nome: map['nome'],
      codigo: map['codigo'],
      descricao: map['descricao'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Raca.fromJson(String source) => Raca.fromMap(json.decode(source));
}
