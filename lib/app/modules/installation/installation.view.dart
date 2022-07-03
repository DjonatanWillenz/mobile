import 'package:app/app/global/utils/const.text.dart';
import 'package:app/app/global/widgets/widget.option.dart';
import 'package:app/app/global/widgets/widget.scaffold.listagem.dart';
import 'package:app/app/modules/installation/installation.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SettingsSystemView extends GetView<InstallationController> {
  @override
  Widget build(BuildContext context) {
    return DwScaffoldListagem(
      title: UtilsTextLabels.INSTALLATION,
      body: Column(
        children: List.generate(
          controller.installations.length,
          (index) => DwOption(
            title: controller.installations[index].title,
            setting: controller.installations[index].setting,
            onChange: controller.onChanged,
          ),
        ),
      ),
    );
  }
}
