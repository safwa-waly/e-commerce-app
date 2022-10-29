import 'dart:async';

import 'package:e_commece_app/screens/item_datails/controller.dart';
import 'package:flutter/material.dart';

import '../../methods.dart';
import '../drawer/drawer.dart';
import '../my_cart/mycart_view.dart';

class ViewItem extends StatefulWidget {
  @override
  _ViewItemState createState() => _ViewItemState();
}

class _ViewItemState extends State<ViewItem> {
  final controller = EcommerceController();
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), ()=>MyCartScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              ListTile(
                  leading: IconButton(onPressed: () {
                   navigateTo(context, Drawer2Screen());
                  },
                    color: Colors.black,
                    iconSize: 30,
                    icon: Icon(Icons.arrow_back),),
                  trailing:IconButton(onPressed: () {},
                    color: Colors.black,
                    iconSize: 30,
                    icon: Icon(Icons.favorite_border),),),

              SizedBox(
                height: 10,
              ),
              Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/chair.jpg'),
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Ramni Chair',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.redAccent,
                  ),
                  Text(
                    '4.5',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '\$1700',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
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
                          Tab(text: 'Description'),
                          Tab(text: 'Reviews'),
                          Tab(text: 'Offers'),
                          Tab(text: 'Policy'),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      child: TabBarView(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 11),
                          child: Container(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Minimalist Styling Is Not About Creating A Cold, Hard, Empty White Box Of A Home. It Is About Using Simple And Natural Forms, And Taking Away Layers Without Losing The Aesthetic Appeal Of The Space. The Focus Is On Shape, With A Furniture And Accessories.',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black54)),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent,
                                            borderRadius:
                                            BorderRadius.circular(30)),
                                        height: 50,
                                        width: 150,
                                        child: Row(
                                          children: [
                                            IconButton(
                                                icon: Icon(
                                                  Icons.add_circle,
                                                  color: Colors.white,
                                                ),
                                                onPressed: () {
                                                  controller.plusItem();
                                                  setState(() {});
                                                }),
                                            Spacer(),
                                            Text(
                                              '${controller.item}',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            Spacer(),
                                            IconButton(
                                                icon: Icon(
                                                  Icons.remove_circle,
                                                  color: Colors.white,
                                                ),
                                                onPressed: () {
                                                  controller.minusItem();
                                                  setState(() {});
                                                }),
                                          ],
                                        ),
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
                                          navigateTo(context, MyCartScreen());
                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                              'ADD TO CART',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(
                                              Icons.shopping_cart,
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
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 3',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 4',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold)),
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
