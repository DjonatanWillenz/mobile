import 'package:app/app/data/model/user.model.dart';
import 'package:app/app/data/model/user.setting.model.dart';
import 'package:app/app/data/repository/user.setting.repository.dart';

class SettingsSystem {
  static SettingsSystem _instance;
  User user;
  UserSetting setting;

  SettingsSystem._() {
    user = new User();
    setting = new UserSetting();
  }

  static get instance {
    _instance ??= SettingsSystem._();
    return _instance;
  }

  findSetting() async {
    UserSettingRepository repository = new UserSettingRepository();
    repository.find();
  }
}
