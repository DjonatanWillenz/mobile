import 'dart:convert';

import 'package:app/app/data/model/usuario_model.dart';

class ConfiguracaoModel {
  int idConfiguracao;
  Usuario idUsuario;
  int notificar;
  String horarioNotificacao;

  ConfiguracaoModel({
    this.idConfiguracao,
    this.idUsuario,
    this.notificar,
    this.horarioNotificacao,
  });

  Map<String, dynamic> toMap() {
    return {
      'idConfiguracao': idConfiguracao,
      'idUsuario': idUsuario.toMap(),
      'notificar': notificar,
      'horarioNotificacao': horarioNotificacao,
    };
  }

  factory ConfiguracaoModel.fromMap(Map<String, dynamic> map) {
    return ConfiguracaoModel(
      idConfiguracao: map['idConfiguracao'],
      idUsuario: Usuario.fromMap(map['idUsuario']),
      notificar: map['notificar'],
      horarioNotificacao: map['horarioNotificacao'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ConfiguracaoModel.fromJson(String source) =>
      ConfiguracaoModel.fromMap(json.decode(source));
}
