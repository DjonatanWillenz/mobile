import 'package:app/app/data/model/dashboard.model.dart';
import 'package:app/app/data/provider/dashboardd.provider.dart';

class DashboardRepository {
  final DashboardApiClient apiClient = DashboardApiClient();

  Future<Dashboard> find(int idinstallation) async {
    Dashboard result = new Dashboard();
    dynamic res =
        await apiClient.find(idinstallation == null ? 1 : idinstallation);

    if (res != null)
      result = res.map<Dashboard>((e) => Dashboard.fromJson(e)).toList();

    return result;
  }
}
