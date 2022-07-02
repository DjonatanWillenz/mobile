import 'package:app/app/data/enum/setting.enum.dart';
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
      body: Center(
        child: Column(
          children: [
            DwOption(
              title:
                  "Notificar ao identificar erro ao tentar disparar rotina de tratar",
              enabled: controller.enabledOption(UserSettingEnum.NOTIFY),
              onChange: controller.onChange,
            ),
            DwOption(
              title:
                  "Notificar ao identificar erro ao tentar disparar rotina de tratar",
              enabled: controller.enabledOption(UserSettingEnum.NOTIFY),
              onChange: controller.onChange,
            )
          ],
        ),
      ),
    );
  }
}
