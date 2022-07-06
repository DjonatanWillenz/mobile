import 'package:app/app/data/provider/dwGetConnect.dart';

class TaskApiClient extends DwGetConnect {
  find(int idinstallation) async {
    try {
      final response = await get(baseUrl + '/app/task/$idinstallation');
      return response.statusCode == 202 ? response.body as List : null;
    } catch (e) {
      return null;
    }
  }
}
