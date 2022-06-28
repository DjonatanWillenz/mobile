import 'package:app/app/data/provider/notification.provider.dart';
import 'package:app/app/data/repository/notification.repository.dart';
import 'package:app/app/modules/notifications/notification.controller.dart';
import 'package:get/get.dart';

class NotificationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(
        () => NotificationController());
    Get.lazyPut<NotificationRepository>(() => NotificationRepository());
    Get.lazyPut<NotificationApiClient>(() => NotificationApiClient());
  }
}
