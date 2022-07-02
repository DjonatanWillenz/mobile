import 'package:app/app/data/provider/user.provider.dart';
import 'package:app/app/data/provider/user.setting.provider.dart';
import 'package:app/app/data/repository/user.repository.dart';
import 'package:app/app/data/repository/user.setting.repository.dart';
import 'package:app/app/modules/user/auth/auth.controller.dart';
import 'package:get/get.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut<UserRepository>(() => UserRepository());
    Get.lazyPut<UserApiClient>(() => UserApiClient());
    Get.lazyPut<UserSettingApiClient>(() => UserSettingApiClient());
    Get.lazyPut<UserSettingRepository>(() => UserSettingRepository());
  }
}
