import 'dart:async';

import 'package:flutter/material.dart';

import '../../methods.dart';
import '../drawer/drawer.dart';

class HelloScreen extends StatefulWidget {
  @override
  _HelloScreenState createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), ()=>Drawer2Screen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        ),child: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Column(
          children: [
            Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: ('Hello Safwa '),
                    style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white)),
                TextSpan(
                    text: ('\n \nWelcome To The Ramni !'),
                    style: TextStyle(
                        fontSize: 17,color: Colors.white))
              ]),
              textAlign: TextAlign.center,

            ),
            SizedBox(height: 30,),
            CircleAvatar(
              radius: 65.0,
              backgroundImage: AssetImage('assets/images/me.jpg'),
            ),
            SizedBox(height: 30,),
            MaterialButton(
              height: 40,
              minWidth: 100,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              onPressed: () {},
              child: Text(
                'Change Profile Picture',
                style: TextStyle(color: Colors.deepOrange, fontSize: 15),
              ),
            ),
            SizedBox(height: 100,),
            MaterialButton(
              height: 50,
              minWidth: 250,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              onPressed: () {},
              child: Text(
                'Upload Picture',
                style: TextStyle(color: Colors.deepOrange, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  navigateTo(context, Drawer2Screen());
                },
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ))
          ],
      ),
        ),
      ),
    );
  }
}
