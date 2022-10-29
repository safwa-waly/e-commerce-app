import 'package:flutter/material.dart';

class ItemLabel extends StatelessWidget {
  final text;

  const ItemLabel({ this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Text(text,style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)
    );
  }
}
