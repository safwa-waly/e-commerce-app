import 'dart:async';

import 'package:e_commece_app/screens/component/checkbox_item.dart';
import 'package:e_commece_app/screens/component/checkbox_item2.dart';
import 'package:e_commece_app/screens/component/item-label.dart';
import 'package:e_commece_app/screens/filters/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../methods.dart';


import '../my_cart/mycart_view.dart';

class FiltersScreen extends StatefulWidget {
  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  final controller = EcommerceController();
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), ()=>MyCartScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          color: Colors.black,
          iconSize: 30,
          icon: Icon(Icons.cancel_rounded),
        ),
    title: Text(
        'Filters',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),
      ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemLabel(
                        text: 'categories',
                      ),
                      ...List.generate(
                          controller.titels.length,
                          (index) => CheckboxItem(
                                index: index,
                                controller: controller,
                              )),
                      SizedBox(
                        height: 20,
                      ),
                      ItemLabel(
                        text: 'Brand',
                      ),
                      ...List.generate(
                          controller.brands.length,
                          (index) => CheckboxItem2(
                                index: index,
                                controller: controller,
                              )),
                    ],
                  ),
                ),
                Center(
                  child: MaterialButton(
                    height: 45,
                    minWidth: 250,
                    color: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    onPressed: () {
                      navigateTo(context, MyCartScreen());
                    },
                    child: Text(
                      'APPLY FILTER',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
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
