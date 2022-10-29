import 'dart:async';

import 'package:flutter/material.dart';

import '../../methods.dart';
import '../details/datails.dart';

class AcceptedScreen extends StatefulWidget {
  @override
  _AcceptedScreenState createState() => _AcceptedScreenState();
}

class _AcceptedScreenState extends State<AcceptedScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), ()=>DetailsScreen());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/cracker.png'),
                fit: BoxFit.contain,
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: ('Your Order '),
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: ('\n Has Been Accepted'),
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))
              ]),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your items has been placed and is on it's way to being processed",
              style: TextStyle(color: Colors.black54, fontSize: 17),
            ),SizedBox(
              height: 50,
            ),
            MaterialButton(
              height: 50,
              minWidth: 250,
              color: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              onPressed: () {},
              child: Text(
                'TRACK ORDER',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  navigateTo(context, DetailsScreen());
                },
                child: Text(
                  'BACK TO HOME',
                  style: TextStyle(color: Colors.deepOrange, fontSize: 17,fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
