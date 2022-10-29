import 'dart:async';

import 'package:e_commece_app/screens/sign_in/view.dart';
import 'package:flutter/material.dart';

import '../../methods.dart';


class GetStarted3Screen extends StatefulWidget {
  @override
  _GetStarted3ScreenState createState() => _GetStarted3ScreenState();
}

class _GetStarted3ScreenState extends State<GetStarted3Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), ()=>SignInScreen());
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
        child:  Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(7),
                decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Text(
                    'R',
                    style: TextStyle(
                      fontSize: 65,
                      color: Colors.deepOrange[600],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'RAMNI',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/online-shopping.png'),
                      fit: BoxFit.contain,
                    )),
              ),SizedBox(
                height: 35,
              ),
              MaterialButton(
                height: 50,
                minWidth: 250,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                onPressed: () {},
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
                    navigateTo(context, SignInScreen());
                  },
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
