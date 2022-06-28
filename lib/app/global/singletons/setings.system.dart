import 'package:app/app/data/model/user.model.dart';

class SettingsSystem {
  static SettingsSystem _instance;
  User user;

  SettingsSystem._() {
    user = new User();
  }

  static get instance {
    _instance ??= SettingsSystem._();
    return _instance;
  }
}
