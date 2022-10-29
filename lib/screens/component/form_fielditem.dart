import 'package:e_commece_app/screens/drawer/controller.dart';
import 'package:flutter/material.dart';


class TextFormItem extends StatelessWidget {
  final label;
   final EcommerceController controller;
   final inputType;
   final password;
   TextFormItem({ this.label, this.controller, this.inputType, this.password});
  @override
  Widget build(BuildContext context) {
    return TextFormField(obscureText:password ,
      keyboardType: inputType,
      decoration: InputDecoration(floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: label,
        border: OutlineInputBorder(),

      ),
    );
  }
}
