import 'package:app/app/modules/settings/setting.system.controller.dart';
import 'package:get/get.dart';

class SettingsSystemBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingSystemController());
  }
}
