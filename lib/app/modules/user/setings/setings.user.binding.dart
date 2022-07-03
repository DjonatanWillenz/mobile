import 'package:app/app/data/model/installation.setting.model.dart';
import 'package:app/app/data/provider/installation.setting.provider.dart';
import 'package:app/app/data/repository/installation.setting.repository.dart';
import 'package:app/app/modules/user/setings/setings.user.controller.dart';
import 'package:get/get.dart';

class SetingsUserSystemBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetingsUserController());
    Get.lazyPut(() => InstallationSettingRepository());
    Get.lazyPut(() => InstallationSettingApiClient());
  }
}
