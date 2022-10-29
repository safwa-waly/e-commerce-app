import 'dart:async';

import 'package:flutter/material.dart';

import '../../methods.dart';
import '../get_started3/get_started3.dart';

class GetStarted2Screen extends StatefulWidget {
  @override
  _GetStarted2ScreenState createState() => _GetStarted2ScreenState();
}

class _GetStarted2ScreenState extends State<GetStarted2Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), ()=>GetStarted3Screen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
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
        child: Padding(
          padding: const EdgeInsets.only(top:120.0),
          child: Column(
            children: [
              Container(height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                 image: AssetImage('assets/images/shop.png'),
                  fit: BoxFit.contain,
                )),
              ),
              SizedBox(
                height: 100,
              ),
              MaterialButton(
                height: 50,
                minWidth: 250,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                onPressed: () {
                  navigateTo(context, GetStarted3Screen());
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.deepOrange, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
