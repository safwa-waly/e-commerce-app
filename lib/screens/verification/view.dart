import 'dart:async';

import 'package:flutter/material.dart';

import '../../methods.dart';
import '../hello/view.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), ()=>HelloScreen());
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
        child: SafeArea(
          child: Column(
            children: [
              Align(
                child: IconButton(onPressed: (){
                },color: Colors.white,iconSize: 30,icon: Icon(Icons.arrow_back),),
                alignment: Alignment.topLeft,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
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
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20),
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
                        Text(
                          'OTP VERIFICATION',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'OTP HAS BEEN SENT TO 99497025566',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 70,width: 70,color: Colors.grey[200],
                              child: Center(child: Text('8',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                            ),
                            Spacer(),
                            Container(
                              height: 70,width: 70,color: Colors.grey[200],
                              child: Center(child: Text('9',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                            ),
                            Spacer(),
                            Container(
                              height: 70,width: 70,color: Colors.grey[200],
                              child: Center(child: Text('7',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                            ),
                            Spacer(),
                            Container(
                              height: 70,width: 70,color: Colors.grey[200],
                              child: Center(child: Text('7',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: 250,
                          color: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
                          onPressed: () {
                            navigateWithoutHistory(context, HelloScreen());
                          },
                          child: Text(
                            'VERIFY OTP',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('00:30',style: TextStyle(color: Colors.grey,fontSize: 20),),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'RESEND OTP',
                                  style:
                                  TextStyle(color: Colors.grey[600], fontSize: 20),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
