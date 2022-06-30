import 'package:app/app/global/utils/constantes.text.dart';
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
                controller.todos.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue,
                            border: Border.all(width: 1)),
                        child: SwitchListTile.adaptive(
                          title: Text(
                            controller.todos[index].name,
                            style: TextStyle(color: Colors.white),
                          ),
                          value: controller.todos[index].enable,
                          onChanged: (newValue) {
                            controller.todos[index].enable = newValue ?? true;
                          },
                        ),
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
