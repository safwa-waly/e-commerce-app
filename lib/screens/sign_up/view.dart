import 'dart:async';

import 'package:e_commece_app/screens/component/form_fielditem.dart';
import 'package:e_commece_app/screens/sign_up/controller.dart';
import 'package:flutter/material.dart';
import '../../methods.dart';
import '../get_started2/get_started2.dart';
import '../hello/view.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final controller = EcommerceController();
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(onPressed: () {
                      navigateWithoutHistory(context, GetStarted2Screen());
                    },
                      color: Colors.white,
                      iconSize: 30,
                      icon: Icon(Icons.arrow_back),),
                    SizedBox(
                      width: 120,
                    ),
                    Container(
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
                  ],
                ),
              ),
              Expanded(
                child: Container(
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
                        Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.deepOrange),),
                        SizedBox(height: 17,),
                        TextFormItem(label: controller.labels[0],password: false,),
                        SizedBox(height: 17,),
                        TextFormItem(label: controller.labels[1],password: false,),
                        SizedBox(height: 17,),
                        TextFormItem(label: controller.labels[2],inputType: TextInputType.phone,password: false,),
                        SizedBox(height: 17,),
                        TextFormItem(label: controller.labels[3],password: true,),
                        SizedBox(height: 17,),
                        TextFormItem(label: controller.labels[4],password: true,),
                        SizedBox(height: 17,),
                        MaterialButton(
                          height: 50,
                          minWidth: 250,
                          color: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30.0))),
                          onPressed: () {
                            navigateTo(context, HelloScreen());
                          },
                          child: Text(
                            'NEXT',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
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
