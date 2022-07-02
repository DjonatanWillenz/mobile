import 'package:app/app/data/repository/user.repository.dart';
import 'package:app/app/data/repository/user.setting.repository.dart';
import 'package:app/app/global/singletons/setings.system.dart';
import 'package:app/app/routes/app_routers.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitialController extends GetxController {
  UserRepository userRepository = Get.find<UserRepository>();
  final settingRepository = Get.find<UserSettingRepository>();
  String username;
  String password;

  bool ehPrimeiroLogin;

  loginAutomatico() async {
    this.ehPrimeiroLogin = await _findDataUserMemory();

    if (this.ehPrimeiroLogin) {
      SettingsSystem.instance.user =
          await userRepository.auth(this.username, this.password, true);
      _findSetting();
      if (SettingsSystem.instance.user != null) Get.offAndToNamed(Routes.HOME);
    }
  }

  Future<bool> _findDataUserMemory() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    this.username = _prefs.getString('username') ?? '';
    this.password = _prefs.getString('password') ?? '';

    return (this.username != '') && (this.password != '');
  }

  _findSetting() async {
    await settingRepository.find();
  }
}
