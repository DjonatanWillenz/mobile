import 'package:app/app/data/repository/notification.repository.dart';
import 'package:app/app/modules/home/home.controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<NotificationRepository>(() => NotificationRepository());
  }
}
