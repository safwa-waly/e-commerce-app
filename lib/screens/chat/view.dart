import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
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
                child: IconButton(onPressed: (){},color: Colors.white,iconSize: 30,icon: Icon(Icons.arrow_back),),
                alignment: Alignment.topLeft,
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
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
                    SizedBox(
                      width: 20,
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: ('Hi There !'),
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        TextSpan(
                            text: ('\n How Can We Help You'),
                            style: TextStyle(fontSize: 17, color: Colors.white))
                      ]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 40.0,
                            backgroundImage: AssetImage('assets/images/me.jpg'),
                          ),
                          title: Text(
                            'Safwa joined the chat',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          subtitle: Text(
                            '2M ago',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Container(
                          // height: 150,
                          width: 300,
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50)),
                          ),
                          child: Text(
                            'Hello sir,\nis there something we can help with you today?',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          width: 300,
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50)),
                          ),
                          child: Text(
                            'just let me know!',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Align(
                          child: Container(
                            width: 300,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  topLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                            ),
                            child: Text(
                              'hello safwa',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),alignment: Alignment.topLeft,
                          ),
                        ),
                        Align(
                          child: Container(
                            width: 300,
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.all(25),
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  topLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                            ),
                            child: Text(
                              'i have issues with payment method',
                              style:
                              TextStyle(fontSize: 20, color: Colors.white),
                            ),alignment: Alignment.topLeft,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(50),
                               ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'write a message...',
                                style: TextStyle(fontSize: 20,color: Colors.black54),
                              ),
                              Spacer(),
                              Icon(Icons.face,color: Colors.black54,),
                              Icon(Icons.photo,color: Colors.black54),
                              Icon(Icons.attach_file,color: Colors.black54),
                            ],
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
