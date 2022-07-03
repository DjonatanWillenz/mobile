import 'package:app/app/global/utils/const.color.dart';
import 'package:app/app/global/widgets/widget_icon_button.dart';
import 'package:app/app/modules/home/components/widget.drawer.dart';
import 'package:app/app/modules/home/home.controller.dart';
import 'package:app/app/routes/app_routers.dart';
import 'package:app/app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appThemeData().appBarTheme.backgroundColor,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Obx(
                    () => DwIconButton(
                      icon: controller.notifications > 0
                          ? Icons.notifications_on_sharp
                          : Icons.notifications_rounded,
                      corIcon: controller.notifications > 0
                          ? Colors.yellow
                          : Colors.white,
                      sizeIcon: controller.notifications > 0 ? 26 : 24,
                      onPressed: () => Get.defaultDialog(
                        title: 'Alerta',
                        backgroundColor: UtilsColor.dialogs,
                        buttonColor: UtilsColor.buttonDialogs,
                        textConfirm: 'Visualizar',
                        textCancel: 'Cancelar',
                        middleText:
                            'Você tem novas mensagens na sua caixa de entrada!',
                        onConfirm: () {
                          Get.back();
                          Get.toNamed(Routes.NOTIFICATIONS);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      drawer: DwDrawer(itens: controller.findItensDrawer()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: UtilsColor.kPadding / 2,
                top: UtilsColor.kPadding / 2,
                right: UtilsColor.kPadding / 2,
              ),
              child: Card(
                color: UtilsColor.purpleLight,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: double.infinity,
                  child: ListTile(
                    leading: Icon(Icons.grid_on_sharp),
                    title: Text(
                      "Products Sold",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "18% of Products Sold",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Chip(
                      label: Text(
                        "4,500",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
