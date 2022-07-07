import 'package:app/app/data/model/task.model.dart';
import 'package:app/app/data/repository/task.repository.dart';
import 'package:app/app/global/widgets/widget.list.tile.confirm.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DwListCardsTasks extends StatelessWidget {
  TaskRepository repository;

  DwListCardsTasks({Key key, this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Task>>(
      future: repository.find(),
      // ignore: missing_return
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return CircularProgressIndicator();
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          final lista = snapshot.data;
          if (lista.length != 0) {
            return ListView.builder(
                itemCount: lista.length ?? 0,
                itemBuilder: (context, index) {
                  return DwListTileConfirmm(
                    title: lista[index].title.toString(),
                    leading: (index + 1).toString(),
                    subtitle: lista[index].description.toString(),
                  );
                });
          } else
            return Center(
              child: Text(
                'Não encontramos registros',
                style: TextStyle(fontSize: 18),
              ),
            );
        }
      },
    );
  }
}
