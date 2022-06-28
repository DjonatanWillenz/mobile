import 'package:app/app/global/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class DwScaffold extends StatelessWidget {
  final String title;
  final GlobalKey chave;
  final Widget body;
  final Widget floatingActionButton;

  const DwScaffold({
    Key key,
    this.title,
    this.chave,
    this.body,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeData.dark().primaryColor,
        title: DwText(lbl: (title != null ? title : '') + '        '),
        key: chave,
      ),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
