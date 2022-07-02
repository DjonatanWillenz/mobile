import 'package:app/app/data/enum/setting.enum.dart';
import 'package:app/app/data/repository/user.setting.repository.dart';
import 'package:app/app/global/singletons/setings.system.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SetingsUserController extends GetxController {
  final repositoty = Get.find<UserSettingRepository>();
  final formKey = GlobalKey<FormState>();

  onChange(UserSettingEnum setting, bool newVal) {
    switch (setting) {
      case UserSettingEnum.NOTIFY:
        SettingsSystem.instance.setting.notify = newVal;
    }
    repositoty.update(SettingsSystem.instance.setting);
  }

  enabledOption(UserSettingEnum setting) {
    switch (setting) {
      case UserSettingEnum.NOTIFY:
        return SettingsSystem.instance.setting.notify;
        break;
    }
    return false;
  }
}
