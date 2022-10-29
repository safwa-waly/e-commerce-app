import 'dart:async';

import 'package:e_commece_app/screens/component/form_fielditem.dart';
import 'package:e_commece_app/screens/component/item-label.dart';
import 'package:flutter/material.dart';

import '../../methods.dart';
import '../accepted/accepted.dart';

import '../drawer/drawer.dart';
import '../my_cart/mycart_view.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), ()=>MyCartScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          iconSize: 30,
          onPressed: () {
            navigateWithoutHistory(context,MyCartScreen());
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Text(
          'Checkout',
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemLabel(
                text: 'Shipping Address',
              ),
              SizedBox(
                height: 20,
              ),
              TextFormItem(
                label: 'Name',
                password: false,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormItem(
                label: 'Address',
                password: false,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormItem(
                label: 'PinCode',
                password: false,
              ),
              SizedBox(
                height: 20,
              ),
              ItemLabel(
                text: 'Payment Method',
              ),
              DefaultTabController(
                length: 4,
                initialIndex: 0,
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                        indicatorColor: Colors.redAccent,
                        labelColor: Colors.redAccent,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: 'Debit Card'),
                          Tab(text: 'Credit Card'),
                          Tab(text: 'UPI'),
                          Tab(text: 'Net Banking'),
                        ],
                      ),
                    ),
                    Container(
                      height: 220,
                      child: TabBarView(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Container(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextFormItem(
                                    label: 'Name On Card',
                                    password: false,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormItem(
                                    label: 'Card Number',
                                    password: false,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Container(
                                          height: 150,
                                              child:TextFormItem(
                                                label: 'Exp date',
                                                password: false,
                                              ),
                                        )),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: 150,
                                           child: TextFormItem(
                                             label: 'Exp date',
                                             password: false,
                                           ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text.rich(
                                        TextSpan(children: [
                                          TextSpan(
                                              text: ('Total Amount'),
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey)),
                                          TextSpan(
                                              text: ('\n \$1700'),
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold))
                                        ]),
                                      ),
                                      Spacer(),
                                      MaterialButton(
                                        height: 50,
                                        minWidth: 200,
                                        color: Colors.redAccent,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0))),
                                        onPressed: () {
                                          navigateTo(context, AcceptedScreen());
                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                              'PLACE ORDER',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 3',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 4',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
