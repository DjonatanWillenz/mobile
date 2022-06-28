import 'package:app/app/modules/user/setings/setings.user.controller.dart';
import 'package:get/get.dart';

class SetingsUserSystemBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetingsUserController>(() => SetingsUserController());
  }
}
