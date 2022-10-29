import 'package:e_commece_app/screens/filters/controller.dart';
import 'package:flutter/material.dart';



class CheckboxItem extends StatefulWidget {
  final txt;
  final isChecked;
  final index;
final EcommerceController controller;
  const CheckboxItem({ this.txt, this.isChecked, this.index, this.controller}) ;

  @override
  _CheckboxItemState createState() => _CheckboxItemState();
}

class _CheckboxItemState extends State<CheckboxItem> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(activeColor: Colors.redAccent,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(widget.controller.titels[widget.index]),
        value: widget.controller.values[widget.index],
        onChanged: (bool value) {
          setState(() {});
          widget.controller.values[widget.index]=value;
        });
  }
}
