import 'package:flutter/material.dart';

class DwButton extends StatelessWidget {
  final String label;
  final Color labelCor;
  final Function funOnTap;
  final Color cor;
  final IconData icon;
  final Color corIcon;
  final double sizeIcon;

  const DwButton(
      {Key key,
      this.label = "null",
      @required this.funOnTap,
      this.cor,
      this.labelCor,
      this.icon,
      this.corIcon,
      this.sizeIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
      child: GestureDetector(
        onTap: funOnTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: cor ?? Colors.red,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(this.icon,
                    size: this.sizeIcon ?? 30,
                    color: this.corIcon ?? Colors.white),
                SizedBox(width: 10),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: labelCor ?? Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
