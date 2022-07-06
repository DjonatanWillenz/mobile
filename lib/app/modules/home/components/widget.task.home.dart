import 'package:app/app/data/model/task.model.dart';
import 'package:app/app/data/repository/task.repository.dart';
import 'package:app/app/global/widgets/widget.list.tile.confirm.dart';
import 'package:app/app/global/widgets/widget.text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DwListCardsTasks extends StatelessWidget {
  TaskRepository repository;

  DwListCardsTasks({Key key, this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Task>>(
        future: repository.find(),
        // ignore: missing_return
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return CircularProgressIndicator();
          if (snapshot.connectionState == ConnectionState.done &&
              snapshot.hasData) {
            final lista = snapshot.data;
            return ListView.builder(
              itemCount: lista.length ?? 0,
              itemBuilder: (context, index) {
                if (lista != null)
                  return DwListTileConfirmm(
                    title: lista[index].title.toString(),
                    leading: (index + 1).toString(),
                    subtitle: lista[index].description.toString(),
                  );
                else
                  return Center(
                    child: DwText(
                      lbl: 'Não encontramos registros',
                    ),
                  );
              },
            );
          }
        },
      ),
    );
  }
}
