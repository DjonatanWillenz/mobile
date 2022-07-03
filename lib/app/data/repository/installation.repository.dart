import 'package:app/app/data/model/installation.model.dart';
import 'package:app/app/data/provider/installation.provider.dart';
import 'package:app/app/global/singletons/setings.system.dart';

class InstallationRepository {
  final InstallationApiClient apiClient = InstallationApiClient();

  find() async {
    var res = await apiClient.find(SettingsSystem.instance.user.id);
    return res != null
        ? res.map<Installation>((e) => Installation.fromJson(e)).toList()
        : null;
  }

  update(Installation entity) async {
    return Installation.fromJson(await apiClient.update(entity));
  }
}
