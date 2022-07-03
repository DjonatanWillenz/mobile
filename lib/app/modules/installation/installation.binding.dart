import 'package:app/app/data/provider/installation.provider.dart';
import 'package:app/app/data/repository/installation.repository.dart';
import 'package:get/get.dart';

class SettingsSystemBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InstallationApiClient());
    Get.lazyPut(() => InstallationRepository());
  }
}
