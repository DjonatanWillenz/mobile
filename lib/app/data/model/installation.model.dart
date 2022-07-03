import 'dart:convert';

import 'package:app/app/data/model/installation.setting.model.dart';

class Installation {
  int id;
  List<InstallationSetting> settings;
  String name;
  String key;
  String description;
  DateTime datecreate;
  bool active;

  Installation({
    this.id,
    this.settings,
    this.name,
    this.key,
    this.description,
    this.datecreate,
    this.active,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'settings': settings,
      'name': name,
      'key': key,
      'description': description,
      'datecreate': datecreate,
      'active': active,
    };
  }

  factory Installation.fromMap(Map<String, dynamic> map) {
    return Installation(
      id: map['id'],
      //  settings: settings.toMap();
      name: map['name'],
      key: map['key'],
      description: map['description'],
      datecreate: map['datecreate'],
      active: map['active'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Installation.fromJson(String source) =>
      Installation.fromMap(json.decode(source));
}
