import 'package:app/app/data/model/installation.model.dart';
import 'package:app/app/data/repository/installation.repository.dart';
import 'package:app/app/global/singletons/setings.system.dart';
import 'package:get/get.dart';

class InstallationController extends GetxController {
  final repositoty = Get.find<InstallationRepository>();
  var installations = [];

  InstallationController() {
    this.installations = _installations();
  }
  _installations() async {
    if (SettingsSystem.instance.installations == [])
      SettingsSystem.instance.installations = await repositoty.find();
    return SettingsSystem.instance.installations;
  }

  onChanged(idinstallation) {
    print(installations);
  }
}
