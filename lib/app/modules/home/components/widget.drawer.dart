import 'package:app/app/global/singletons/setings.system.dart';
import 'package:app/app/global/widgets/widget.drawer.list.dart';
import 'package:app/app/routes/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DwDrawer extends StatelessWidget {
  const DwDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: Icon(Icons.account_circle, size: 80),
                accountName: Text(
                  SettingsSystem.instance.user.name ?? 'Null',
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text(
                  SettingsSystem.instance.user.email ?? 'Null',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 40),
              DrawerListTile(
                title: "Dashboard",
                svgSrc: "assets/icons/menu_dashbord.svg",
                press: () => Get.toNamed(Routes.HOME),
              ),
              DrawerListTile(
                title: "Task",
                svgSrc: "assets/icons/menu_task.svg",
                press: () => Get.toNamed(Routes.TASK),
              ),
              DrawerListTile(
                title: "Store",
                svgSrc: "assets/icons/menu_store.svg",
                press: () => Get.toNamed(Routes.STORE),
              ),
              DrawerListTile(
                title: "Notification",
                svgSrc: "assets/icons/menu_notification.svg",
                press: () => Get.toNamed(Routes.NOTIFICATIONS),
              ),
              DrawerListTile(
                title: "Profile",
                svgSrc: "assets/icons/menu_profile.svg",
                press: () => Get.toNamed(Routes.PROFILE),
              ),
              DrawerListTile(
                title: "Settings",
                svgSrc: "assets/icons/menu_setting.svg",
                press: () => Get.toNamed(Routes.CONFIG),
              ),
              DrawerListTile(
                title: "Logout",
                svgSrc: "assets/icons/menu_setting.svg",
                press: () => Get.toNamed(Routes.CONFIG),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
