import 'dart:async';


import 'package:e_commece_app/screens/sign_up/view.dart';
import 'package:flutter/material.dart';

import '../../methods.dart';
import '../get_started2/get_started2.dart';

class GetStarted1Screen extends StatefulWidget {
  @override
  _GetStarted1ScreenState createState() => _GetStarted1ScreenState();
}

class _GetStarted1ScreenState extends State<GetStarted1Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), ()=>GetStarted2Screen());
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
        ),
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(7),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.deepOrange[600],
                  child: Text(
                    'R',
                    style: TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'RAMNI',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
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
                  navigateTo(context, GetStarted2Screen());
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
                  onPressed: () {
                    navigateTo(context, SignUpScreen());
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
