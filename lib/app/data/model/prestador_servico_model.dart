import 'dart:convert';

import 'package:app/app/data/model/propriedade_model.dart';
import 'package:app/app/data/model/usuario_model.dart';

class PrestadorServico {
  int idPrestadorServico;
  int codigo;
  String nome;
  DateTime dataCadastro;
  Propriedade idPropriedade;
  Usuario idUsuario;
  String descricao;
  String cargo;
  String telefone;
  bool ativo;
  PrestadorServico({
    this.idPrestadorServico,
    this.codigo,
    this.nome,
    this.dataCadastro,
    this.idPropriedade,
    this.idUsuario,
    this.descricao,
    this.cargo,
    this.telefone,
    this.ativo,
  });

  Map<String, dynamic> toMap() {
    return {
      'idPrestadorServico': idPrestadorServico,
      'codigo': codigo,
      'nome': nome,
      'dataCadastro': dataCadastro.millisecondsSinceEpoch,
      'idPropriedade': idPropriedade.toMap(),
      'idUsuario': idUsuario.toMap(),
      'descricao': descricao,
      'cargo': cargo,
      'telefone': telefone,
      'ativo': ativo,
    };
  }

  factory PrestadorServico.fromMap(Map<String, dynamic> map) {
    return PrestadorServico(
      idPrestadorServico: map['idPrestadorServico'],
      codigo: map['codigo'],
      nome: map['nome'],
      dataCadastro: DateTime.fromMillisecondsSinceEpoch(map['dataCadastro']),
      idPropriedade: Propriedade.fromMap(map['idPropriedade']),
      idUsuario: Usuario.fromMap(map['idUsuario']),
      descricao: map['descricao'],
      cargo: map['cargo'],
      telefone: map['telefone'],
      ativo: map['ativo'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PrestadorServico.fromJson(String source) =>
      PrestadorServico.fromMap(json.decode(source));
}
