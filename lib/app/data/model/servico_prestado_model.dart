import 'dart:convert';

import 'package:app/app/data/model/prestador_servico_model.dart';
import 'package:app/app/data/model/propriedade_model.dart';

class ServicoPrestado {
  int idServiPrestado;
  Propriedade idPropriedade;
  String descricao;
  DateTime data;
  PrestadorServico idPrestadorServico;

  ServicoPrestado({
    this.idServiPrestado,
    this.idPropriedade,
    this.descricao,
    this.data,
    this.idPrestadorServico,
  });

  Map<String, dynamic> toMap() {
    return {
      'idServiPrestado': idServiPrestado,
      'idPropriedade': idPropriedade.toMap(),
      'descricao': descricao,
      'data': data.millisecondsSinceEpoch,
      'idPrestadorServico': idPrestadorServico.toMap(),
    };
  }

  factory ServicoPrestado.fromMap(Map<String, dynamic> map) {
    return ServicoPrestado(
      idServiPrestado: map['idServiPrestado'],
      idPropriedade: Propriedade.fromMap(map['idPropriedade']),
      descricao: map['descricao'],
      data: DateTime.fromMillisecondsSinceEpoch(map['data']),
      idPrestadorServico: PrestadorServico.fromMap(map['idPrestadorServico']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ServicoPrestado.fromJson(String source) =>
      ServicoPrestado.fromMap(json.decode(source));
}
