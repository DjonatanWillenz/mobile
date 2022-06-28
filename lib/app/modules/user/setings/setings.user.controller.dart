import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Todo {
  String name;
  bool enable;
  Todo({
    @required this.name,
    @required this.enable,
  });
}

class SetingsUserController extends GetxController {
  List<Todo> todos = [
    Todo(
        name:
            "Notificar ao identificar erro ao tentar disparar rotina de tratar",
        enable: true),
    Todo(
        name: "Notificar ao ocorrer uma alteração do ph da água fora do padrão",
        enable: true),
    Todo(
        name:
            "Notificar ao ocorrer um problema com o motor que realiza o ciclo de limpeza",
        enable: true),
  ].obs;
}
