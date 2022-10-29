import 'package:e_commece_app/screens/filters/controller.dart';
import 'package:flutter/material.dart';


class CheckboxItem2 extends StatefulWidget {
  final txt;
  final isChecked;
  final index;
  final EcommerceController controller;
  const CheckboxItem2({ this.txt, this.isChecked, this.index, this.controller}) ;

  @override
  _CheckboxItemState createState() => _CheckboxItemState();
}

class _CheckboxItemState extends State<CheckboxItem2> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(activeColor: Colors.redAccent,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(widget.controller.brands[widget.index]),
        value: widget.controller.val[widget.index],
        onChanged: (bool value) {
          setState(() {});
          widget.controller.val[widget.index]=value;
        });
  }
}
