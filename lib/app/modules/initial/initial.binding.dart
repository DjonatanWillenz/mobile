import 'package:app/app/data/provider/user.provider.dart';
import 'package:app/app/data/provider/user.setting.provider.dart';
import 'package:app/app/data/repository/user.repository.dart';
import 'package:app/app/data/repository/user.setting.repository.dart';
import 'package:app/app/modules/initial/initial.controller.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InitialController>(() => InitialController());
    Get.lazyPut<UserApiClient>(() => UserApiClient());
    Get.lazyPut<UserRepository>(() => UserRepository());
    Get.lazyPut<UserSettingApiClient>(() => UserSettingApiClient());
    Get.lazyPut<UserSettingRepository>(() => UserSettingRepository());
  }
}
