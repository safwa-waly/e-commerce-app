import 'dart:async';

import 'package:e_commece_app/screens/drawer/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../methods.dart';
import '../details/datails.dart';
import '../filters/filters_view.dart';
import '../item_datails/view.dart';

class Drawer2Screen extends StatefulWidget {
  @override
  _Drawer2ScreenState createState() => _Drawer2ScreenState();
}

class _Drawer2ScreenState extends State<Drawer2Screen> {
  final controller = EcommerceController();
  int currentIndex = 0;
   @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), ()=>ViewItem());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsetsDirectional.only(top: 60, start: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.red[700],
                Colors.deepOrange,
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/me.jpg'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: ('Safwa Waly'),
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    TextSpan(
                        text: ('\nsafwa.waly@yahoo.com'),
                        style: TextStyle(fontSize: 15, color: Colors.white))
                  ]),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.white,
                  endIndent: 150,
                ),
                ...List.generate(
                    controller.names.length,
                    (index) => InkWell(
                          onTap: () {
                            controller.selectedIndex = index;
                            navigateTo(context, controller.pages[index]);
                            setState(() {});

                          },
                          child: Container(
                            margin: const EdgeInsetsDirectional.only(
                                top: 10, end: 130),
                            decoration: BoxDecoration(
                              color: index == controller.selectedIndex
                                  ? Colors.black54
                                  : null,
                              borderRadius: BorderRadiusDirectional.only(
                                topEnd: Radius.circular(25),
                                bottomEnd: Radius.circular(25),
                              ),
                            ),
                            child: ListTile(
                              leading: Icon(
                                controller.icons[index],
                                color: Colors.white,
                              ),
                              title: Text(
                                controller.names[index],
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ))
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(25)),
                      margin: EdgeInsets.all(12),
                      padding: EdgeInsets.all(10),
                      height: 40,
                      width: 340,
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'search',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black54,
                            ),
                          )
                        ],
                      )),
                  InkWell(onTap: (){},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Text(
                  'TRENDING PRODUCTS',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                trailing: TextButton(
                  onPressed: () {
                    navigateTo(context, ViewItem());
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(color: Colors.redAccent, fontSize: 18),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 230,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image.network(
                                'https://ii.worldmarket.com/fcgi-bin/iipsrv.fcgi?FIF=/images/worldmarket/source/74750_dovegray_v1.tif&wid=2000&cvt=jpeg',
                                width: 150,
                              )),
                              Text(
                                'Panka Chair',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$1000',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 20),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                          color: Colors.redAccent,
                                          icon: Icon(Icons.shopping_cart),
                                          onPressed: () {})),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image.network(
                                'https://m.media-amazon.com/images/I/71Je61zY4mL._AC_SL1500_.jpg',
                                width: 150,
                              )),
                              Text(
                                'Ramni Chair',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$1700',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 20),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                          color: Colors.redAccent,
                                          icon: Icon(Icons.shopping_cart),
                                          onPressed: () {})),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Text(
                  'POPULAR CATEGORIES',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                trailing: TextButton(
                  onPressed: () {
                    navigateTo(context, FiltersScreen());
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(color: Colors.redAccent, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      navigateTo(context, DetailsScreen());
                      controller.selectedIndex = index;
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: controller.selectedIndex == index
                            ? Colors.redAccent
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          controller.contains[index],
                          style: TextStyle(
                              fontSize: 17,
                              color: controller.selectedIndex == index
                                  ? Colors.white
                                  : Colors.black),
                        )),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 7,
                  ),
                  itemCount: 6,
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 230,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image.network(
                                'https://static.turbosquid.com/Preview/2020/02/21__20_07_13/Pampas_Grass_Bouquet_05_Preview_01.png9E3C82A9-83F8-4292-8B63-EEBBAA463C58Large.jpg',
                                width: 150,
                              )),
                              Text(
                                'Art Deco Home',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$1200',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 20),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                          color: Colors.redAccent,
                                          icon: Icon(Icons.shopping_cart),
                                          onPressed: () {})),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Image.network(
                                'https://cf.shopee.ph/file/3b44d7de32254a7dde238a88b0917fd1',
                                width: 150,
                              )),
                              Text(
                                'Ramni Cups',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$1500',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 20),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                          color: Colors.redAccent,
                                          icon: Icon(Icons.shopping_cart),
                                          onPressed: () {})),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.redAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        onTap: (index) => setState(() => currentIndex = index),
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inbox,size: 27,),
            label: '.',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 27),
            label: '.',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,size: 27),
            label: '.',
            backgroundColor: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
