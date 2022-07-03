import 'package:app/app/data/model/installation.model.dart';
import 'package:app/app/data/model/user.model.dart';
import 'package:app/app/data/model/user.setting.model.dart';

class SettingsSystem {
  static SettingsSystem _instance;
  User user;
  UserSetting setting;
  List<Installation> installations;

  SettingsSystem._() {
    user = new User();
    setting = new UserSetting();
    installations = [];
  }

  static get instance {
    _instance ??= SettingsSystem._();
    return _instance;
  }
}
