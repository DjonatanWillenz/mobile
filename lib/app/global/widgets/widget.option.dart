import 'package:app/app/global/widgets/widget.text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DwOption extends StatefulWidget {
  const DwOption({
    Key key,
    this.id,
    this.title,
    this.description,
    this.enabled,
    this.onChange,
  }) : super(key: key);

  @override
  State<DwOption> createState() => _DwOptionState();
  final int id;
  final String title;
  final String description;
  final RxBool enabled;
  final Function onChange;
}

class _DwOptionState extends State<DwOption> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blue,
            border: Border.all(width: 1),
          ),
          child: SwitchListTile.adaptive(
            title: DwText(lbl: widget.title),
            value: widget.enabled.value,
            onChanged: (newValue) {
              widget.onChange(widget.id, newValue);
              widget.enabled.value = newValue;
            },
          ),
        ),
      ),
    );
  }
}
