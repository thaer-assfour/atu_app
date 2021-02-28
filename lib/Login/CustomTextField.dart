import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.icon,
      this.hint,
      this.labelText,
      this.obsecure = false,
      this.validator,
      this.onSaved,
      this.prefixText,
      this.keyboardType});

  final FormFieldSetter<String> onSaved;
  final Widget icon;
  final String labelText;
  final bool obsecure;
  final FormFieldValidator<String> validator;
  final String hint;
  String prefixText;
  String keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        autofocus: false,
        keyboardType: (keyboardType == "number")
            ? TextInputType.phone
            : TextInputType.text,
        obscureText: obsecure,
        style: TextStyle(
            fontSize: 18, height: 1.2, color: Theme.of(context).primaryColor,fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            prefixText: prefixText,
            hintText: hint,
            hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            labelText: labelText,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 1,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 1.5,
              ),
            ),
            prefixIcon: Padding(
              child: IconTheme(
                data: IconThemeData(color: Theme.of(context).primaryColor),
                child: icon,
              ),
              padding: EdgeInsets.only(left: 10, right: 16),
            )),
      ),
    );
  }
}