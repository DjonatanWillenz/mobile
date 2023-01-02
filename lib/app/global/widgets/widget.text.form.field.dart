import 'package:flutter/material.dart';

class DwTextFormField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isPassword;
  final TextEditingController controll;
  final Color colorIcon;
  final Function funValidarCampo;
  final bool isNotNull;
  final bool isNumeric;
  final bool isNotMinLength;
  final Function onTap;

  const DwTextFormField({
    Key key,
    this.isPassword = false,
    this.label,
    this.icon,
    this.controll,
    this.colorIcon,
    this.funValidarCampo,
    this.isNotNull = true,
    this.isNumeric = false,
    this.onTap,
    this.isNotMinLength = false,
  }) : super(key: key);

  validarCampo(value) {
    if (this.funValidarCampo != null)
      this.funValidarCampo();
    else {
      if (isNotNull && value.isEmpty)
        return "O campo é de preenchimento obrigatório.";

      if ((isNotNull && (value.length < 8)) ||
          (isNotMinLength && (value.length < 1)))
        return 'O campo precisa ter mais de 8 caracteres.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
        child: TextFormField(
          onTap: onTap,
          controller: controll,
          keyboardType: isNumeric ? TextInputType.number : TextInputType.name,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            fillColor: Colors.amberAccent,
            // prefixIcon: Icon(icon) ?? Icon(Icons.home_filled, color: colorIcon),
            labelText: label ?? 'Sem descrição',
            labelStyle: TextStyle(
              fontSize: 18,
            ),
          ),
          style: TextStyle(fontSize: 16),
          obscureText: isPassword,
          validator: (value) => validarCampo(value),
        ),
      ),
    );
  }
}
