import 'dart:convert';

import 'package:app/app/data/model/propriedade_model.dart';
import 'package:app/app/data/model/raca_model.dart';

class Animal {
  int idAnimal;
  Propriedade idPropriedade;
  String nome;
  int codigo;
  DateTime dataCadastro;
  DateTime dataEdicao;
  int condicao;
  int status;
  int sexo;
  bool ativo;
  Raca idRaca;

  Animal({
    this.idAnimal,
    this.idPropriedade,
    this.nome,
    this.codigo,
    this.dataCadastro,
    this.dataEdicao,
    this.condicao,
    this.status,
    this.sexo,
    this.ativo,
    this.idRaca,
  });

  Map<String, dynamic> toMap() {
    return {
      'idAnimal': idAnimal,
      'idPropriedade': idPropriedade.toMap(),
      'nome': nome,
      'codigo': codigo,
      'dataCadastro': dataCadastro.millisecondsSinceEpoch,
      'dataEdicao': dataEdicao.millisecondsSinceEpoch,
      'condicao': condicao,
      'status': status,
      'sexo': sexo,
      'ativo': ativo,
      'idRaca': idRaca.toMap(),
    };
  }

  factory Animal.fromMap(Map<String, dynamic> map) {
    return Animal(
      idAnimal: map['idAnimal'],
      idPropriedade: Propriedade.fromMap(map['idPropriedade']),
      nome: map['nome'],
      codigo: map['codigo'],
      dataCadastro: DateTime.fromMillisecondsSinceEpoch(map['dataCadastro']),
      dataEdicao: DateTime.fromMillisecondsSinceEpoch(map['dataEdicao']),
      condicao: map['condicao'],
      status: map['status'],
      sexo: map['sexo'],
      ativo: map['ativo'],
      idRaca: Raca.fromMap(map['idRaca']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Animal.fromJson(String source) => Animal.fromMap(json.decode(source));
}
