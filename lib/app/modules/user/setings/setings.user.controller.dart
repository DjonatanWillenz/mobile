import 'package:app/app/data/enum/setting.enum.dart';
import 'package:get/get.dart';

onChange(id, newVal) {
  print("Teste");
}

class SetingsUserController extends GetxController {
  List<UserSettingDto> settings = [
    UserSettingDto(settingEnum: UserSettingEnum.NOTIFY, enabled: true),
    UserSettingDto(settingEnum: UserSettingEnum.NOTIFY, enabled: true),
    UserSettingDto(settingEnum: UserSettingEnum.NOTIFY, enabled: true),
  ].obs;
}
