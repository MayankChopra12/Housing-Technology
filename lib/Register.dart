import 'dart:core';
import 'package:flutter/material.dart';



class Signup extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contact US"),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Padding(padding: EdgeInsets.all(10)),
          Center(
              child: Text("This is application is developed in flutter (Terms and condition Applied) \n For queries and all, Mail us at projectlab337@gmail.com"),
          ),
        ],
      );
  }
}
