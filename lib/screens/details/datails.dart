import 'package:e_commece_app/screens/details/controller.dart';
import 'package:flutter/material.dart';

import '../../methods.dart';
import '../drawer/drawer.dart';

class DetailsScreen extends StatelessWidget {
  final controller = EcommerceController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red[700],
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          navigateTo(context, Drawer2Screen());
        }),
        title: Text('My Account',style: TextStyle(fontSize: 17,color: Colors.white),),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30),
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
        child: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/me.jpg'),
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
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...List.generate(
                          controller.details.length,
                          (index) => Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              color: Colors.grey[200],
                              height: 55,
                              child: ListTile(
                                leading: Icon(
                                  controller.shapes[index],
                                  color: Colors.grey,
                                ),
                                title: Text(
                                  controller.details[index],
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
