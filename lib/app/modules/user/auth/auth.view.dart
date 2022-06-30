import 'package:app/app/global/utils/const.text.dart';
import 'package:app/app/global/widgets/widget_button.dart';
import 'package:app/app/global/widgets/widget_button_rota.dart';
import 'package:app/app/global/widgets/widget.text.click.dart';
import 'package:app/app/global/widgets/widget.text.form.field.dart';
import 'package:app/app/modules/user/auth/auth.controller.dart';
import 'package:app/app/routes/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (_, contenteins) {
            return Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: Get.height * 0.2),
                  CircleAvatar(
                    child: Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.contain,
                      height: 150,
                      width: 150,
                    ),
                    minRadius: 70,
                  ),
                  SizedBox(height: 20),
                  DwTextFormField(
                    controll: controller.username,
                    label: UtilsTextLabels.USERNAME,
                  ),
                  DwTextFormField(
                    controll: controller.password,
                    label: UtilsTextLabels.SENHA,
                    isPassword: true,
                  ),
                  SizedBox(height: 20),
                  DwButton(
                    cor: Colors.blue,
                    label: UtilsTextLabels.ACESSAR,
                    funOnTap: () => controller.validar(),
                    icon: Icons.playlist_add_check_outlined,
                  ),
                  DwButtonRota(
                    corButton: Colors.green,
                    label: UtilsTextLabels.CADASTRAR,
                    rotaOnPress: Routes.POST_USER,
                    icon: Icons.group_add_outlined,
                  ),
                  SizedBox(height: 10),
                  DwTextClick(
                    lbl: UtilsTextLabels.ESQUECEU_SUA_SENHA,
                    fun: controller.enviarEmail,
                    fontSize: 18,
                    cor: Colors.white,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
