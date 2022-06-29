import 'package:app/app/data/base.url.dart';
import 'package:app/app/data/model/notification.model.dart';
import 'package:app/app/data/provider/dwGetConnect.dart';

class NotificationApiClient extends DwGetConnect {
  getUser(int iduser) async {
    try {
      final response = await get(baseUrl + '/app/notification/$iduser');
      return response.statusCode == 202 ? response.body as List : null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  register(Notifications entity) async {
    try {
      final response =
          await post(baseUrl + '/app/notification', entity.toJson());
      return response.statusCode == 201 ? response.body : null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<bool> deletar(int id) async {
    try {
      final response = await delete(baseUrl + '/app/notification/$id');
      return response.statusCode == 202;
    } catch (e) {
      return false;
    }
  }
}
