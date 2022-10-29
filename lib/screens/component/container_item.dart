import 'package:e_commece_app/screens/drawer/controller.dart';
import 'package:flutter/material.dart';



class ContainerItem extends StatelessWidget {
  final controller = EcommerceController();
  final index;

   ContainerItem({Key key, this.index}) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.redAccent,
      child: Text(controller.contains[index]),
    );
  }
}
