import 'package:app/app/data/model/installation.model.dart';
import 'package:app/app/data/provider/installation.provider.dart';
import 'package:app/app/global/singletons/setings.system.dart';

class InstallationRepository {
  final InstallationApiClient apiClient = InstallationApiClient();

  find() async {
    try {
      List<dynamic> json =
          await apiClient.find(SettingsSystem.instance.user.id);
      List<Installation> result = [];
      json.forEach((e) => result.add(Installation.fromMap(e)));
      return result;
    } catch (e) {
      return null;
    }
  }

  update(Installation entity) async {
    return Installation.fromJson(await apiClient.update(entity));
  }
}
