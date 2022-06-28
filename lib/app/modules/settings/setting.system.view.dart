import 'package:app/app/global/utils/const.text.dart';
import 'package:app/app/global/widgets/widget_scaffold.dart';
import 'package:app/app/modules/settings/setting.system.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsSystemView extends GetView<SettingSystemController> {
  @override
  Widget build(BuildContext context) {
    return DwScaffold(
      title: UtilsTextLabels.CONFIG_SYSTEM,
      body: Column(
        children: List.generate(
          controller.products.length,
          (index) => Obx(
            () => SwitchListTile.adaptive(
              title: Text(
                controller.products[index].name,
                style: TextStyle(color: Colors.white),
              ),
              value: controller.products[index].enable,
              onChanged: (newValue) {
                controller.products[index].enable = newValue;
              },
            ),
          ),
        ),
      ),
    );
  }
}
