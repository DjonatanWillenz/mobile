import 'package:app/app/global/utils/constantes.text.dart';
import 'package:app/app/global/widgets/widget.option.dart';
import 'package:app/app/global/widgets/widget_scaffold.dart';
import 'package:app/app/modules/user/setings/setings.user.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetingsUserSystemView extends GetView<SetingsUserController> {
  @override
  Widget build(BuildContext context) {
    return DwScaffold(
      title: UtilsTextLabels.PROFILE,
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Column(
            children: List.generate(
              controller.settings.length,
              (index) => DwOption(
                title: controller.settings[index].getDescription(),
                enabled: controller.settings[index].enabled.obs,
                onChange: onChange,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
