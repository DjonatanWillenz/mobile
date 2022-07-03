import 'package:app/app/data/model/installation.model.dart';
import 'package:app/app/data/provider/installation.provider.dart';

class InstallationRepository {
  final InstallationApiClient apiClient = InstallationApiClient();

  find(int idinstallation) async {
    var res = await apiClient.find(idinstallation);
    return res != null
        ? res.map<Installation>((e) => Installation.fromJson(e)).toList()
        : null;
  }

  update(Installation entity) async {
    return Installation.fromJson(await apiClient.update(entity));
  }
}
