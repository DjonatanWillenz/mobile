import 'package:app/app/modules/administrative/administrative.controller.dart';
import 'package:get/get.dart';

import 'administrative.controller.dart';

class AdministrativeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdministrativeController>(() => AdministrativeController());
  }
}
