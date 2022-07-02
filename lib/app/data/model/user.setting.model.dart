import 'dart:convert';

class UserSetting {
  UserSetting({
    this.id,
    this.notify,
  });

  int id;
  bool notify;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'notify': notify,
    };
  }

  factory UserSetting.fromMap(Map<String, dynamic> map) {
    return UserSetting(
      id: map['id'],
      notify: map['notify'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserSetting.fromJson(String source) =>
      UserSetting.fromMap(json.decode(source));
}
