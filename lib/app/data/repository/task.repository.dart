import 'package:app/app/data/model/task.model.dart';
import 'package:app/app/data/provider/task.provider.dart';
import 'package:app/app/global/singletons/setings.system.dart';

class TaskRepository {
  final TaskApiClient apiClient = TaskApiClient();

  Future<List<Task>> find() async {
    List<Task> result = [];
    var res = await apiClient.find(SettingsSystem.instance.user.id);
    if (res != null) result = res.map<Task>((e) => Task.fromJson(e)).toList();
    return result;
  }

  deleteById(int id) {}
}
