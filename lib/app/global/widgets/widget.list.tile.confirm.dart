import 'package:app/app/global/widgets/widget_icon_button.dart';
import 'package:app/app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class DwListTileConfirmm extends StatelessWidget {
  final String title;
  final String leading;
  final String subtitle;
  final Function onDelete;
  final bool visualizado;

  const DwListTileConfirmm({
    Key key,
    this.title,
    this.leading,
    this.subtitle,
    this.visualizado,
    this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.5),
      child: Container(
        decoration: BoxDecoration(
          color: appThemeData().cardTheme.color,
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(fontSize: 14),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontSize: 12),
          ),
          trailing: DwIconButton(
            icon: Icons.contact_support_outlined,
            sizeIcon: 25,
            corIcon: appThemeData().bottomAppBarColor,
            onPressed: () => {},
          ),
        ),
      ),
    );
  }
}
