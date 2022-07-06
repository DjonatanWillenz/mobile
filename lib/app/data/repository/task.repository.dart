import 'package:app/app/data/model/task.model.dart';
import 'package:app/app/data/provider/task.provider.dart';

class TaskRepository {
  final TaskApiClient apiClient = TaskApiClient();

  Future<List<Task>> find() async {
    List<Task> tasks = [];
    var task = Task();
    task.id = 1;
    task.title = 'Task de teste';
    task.description = "Descrição de uma tarefa de testes";
    tasks.add(task);
    tasks.add(task);
    tasks.add(task);
    tasks.add(task);
    tasks.add(task);
    tasks.add(task);
    tasks.add(task);
    tasks.add(task);
    return tasks;
  }

  deleteById(int id) {}
}
