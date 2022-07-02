import 'package:app/app/data/provider/user.setting.provider.dart';
import 'package:app/app/data/repository/user.setting.repository.dart';
import 'package:app/app/modules/user/setings/setings.user.controller.dart';
import 'package:get/get.dart';

class SetingsUserSystemBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetingsUserController>(() => SetingsUserController());
    Get.lazyPut<UserSettingRepository>(() => UserSettingRepository());
    Get.lazyPut<UserSettingApiClient>(() => UserSettingApiClient());
  }
}
