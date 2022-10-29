import 'dart:async';

import 'package:e_commece_app/screens/my_cart/controller.dart';
import 'package:flutter/material.dart';

import '../../methods.dart';
import '../checkout/view.dart';
import '../item_datails/view.dart';

class MyCartScreen extends StatefulWidget {
  @override
  _MyCartScreenState createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), ()=>CheckOutScreen());
  }
  final controller = EcommerceController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          iconSize: 30,
          onPressed: () {
            navigateTo(context, ViewItem());
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Text(
          'Your Cart',
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                child: Row(
                  children: [
                    Container(
                      child: Image.network(
                        'https://ii.worldmarket.com/fcgi-bin/iipsrv.fcgi?FIF=/images/worldmarket/source/74750_dovegray_v1.tif&wid=2000&cvt=jpeg',
                      ),
                      height: 130,
                    ),
                    Column(
                      children: [
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: ('Ramni Chair '),
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            TextSpan(
                                text: ('\n \$1700'),
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black54))
                          ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30)),
                          height: 40,
                          width: 130,
                          child: Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    controller.plusItem();
                                    setState(() {});
                                  }),
                              Spacer(),
                              Text(
                                '${controller.item}',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Spacer(),
                              IconButton(
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    controller.minusItem();
                                    setState(() {});
                                  }),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                child: Row(
                  children: [
                    Container(
                      child: Image.network('https://static.turbosquid.com/Preview/2020/02/21__20_07_13/Pampas_Grass_Bouquet_05_Preview_01.png9E3C82A9-83F8-4292-8B63-EEBBAA463C58Large.jpg',
                      ),
                      height: 130,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: ('Art Deco Home'),
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            TextSpan(
                                text: ('\n \$1700'),
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black54))
                          ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30)),
                          height: 40,
                          width: 130,
                          child: Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    controller.plusItem();
                                    setState(() {});
                                  }),
                              Spacer(),
                              Text(
                                '${controller.item}',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Spacer(),
                              IconButton(
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    controller.minusItem();
                                    setState(() {});
                                  }),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                child: Row(
                  children: [
                    Container(
                      child: Image.network('https://cf.shopee.ph/file/3b44d7de32254a7dde238a88b0917fd1',
                      ),
                      height: 130,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: ('Ramni Cups '),
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            TextSpan(
                                text: ('\n \$1700'),
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black54))
                          ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30)),
                          height: 40,
                          width: 130,
                          child: Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    controller.plusItem();
                                    setState(() {});
                                  }),
                              Spacer(),
                              Text(
                                '${controller.item}',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Spacer(),
                              IconButton(
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    controller.minusItem();
                                    setState(() {});
                                  }),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                child: Row(
                  children: [
                    Container(
                      child: Image.network('https://m.media-amazon.com/images/I/71Je61zY4mL._AC_SL1500_.jpg',
                      ),
                      height: 130,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: ('Panka Chair '),
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            TextSpan(
                                text: ('\n \$1700'),
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black54))
                          ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30)),
                          height: 40,
                          width: 130,
                          child: Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    controller.plusItem();
                                    setState(() {});
                                  }),
                              Spacer(),
                              Text(
                                '${controller.item}',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Spacer(),
                              IconButton(
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    controller.minusItem();
                                    setState(() {});
                                  }),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
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
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 90),
                child: MaterialButton(
                  height: 50,
                  color: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  onPressed: () {
                    navigateTo(context, CheckOutScreen());
                  },
                  child: Row(
                    children: [
                      Text(
                        'CHECKOUT',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
