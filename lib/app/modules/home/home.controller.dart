import 'dart:io';

import 'package:app/app/data/repository/installation.repository.dart';
import 'package:app/app/data/repository/notification.repository.dart';
import 'package:app/app/data/repository/user.setting.repository.dart';
import 'package:app/app/global/singletons/setings.system.dart';
import 'package:app/app/routes/app_routers.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  final installationRepository = Get.find<InstallationRepository>();
  final settingRepository = Get.find<UserSettingRepository>();

  HomeController() {
    _findInstallations();
    _findNotificacoes();
  }

  logout() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('username', '');
    _prefs.setString('password', '');
    _prefs.setString('token', '');

    Get.toNamed(Routes.LOGIN);
  }

  RxInt currentIndex = 1.obs;
  RxBool isShowingMainData = true.obs;
  final double width = 7;

  RxList<BarChartGroupData> rawBarGroups = new RxList<BarChartGroupData>();
  RxList<BarChartGroupData> showingBarGroups = new RxList<BarChartGroupData>();

  RxInt touchedGroupIndex = 0.obs;
  NotificationRepository notificacao = Get.find<NotificationRepository>();

  RxInt notifications = 0.obs;
  RxInt touchedIndex = 0.obs;

  _findNotificacoes() async {
    var lista =
        await notificacao.getNotifications(SettingsSystem.instance.user.id);
    if (lista != null) notifications = 1.obs;
  }

  logoutApp() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('username', '');
    _prefs.setString('password', '');
    exit(1);
  }

  _findInstallations() async {
    await installationRepository.find();
  }
}
