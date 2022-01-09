import 'dart:core';

import 'package:flutter/material.dart';



class Signin extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SIGN IN"),
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

        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Email Id',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border:OutlineInputBorder(),
                labelText: 'Enter your Password',
              ),
            ),

          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border:OutlineInputBorder(),
                labelText: 'Enter your Organization ',
              ),
            ),

          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border:OutlineInputBorder(),
                labelText: 'Enter your State Name',
              ),
            ),

          ),

            Padding(padding: EdgeInsets.symmetric( vertical: 8)),
          Center(
             child: Row(

                children: [



                  Padding(padding: EdgeInsets.all(12)),

                  ElevatedButton(onPressed: (){}, child: Text("Register as Merchant")),



                ],

                   ),
          ),





        ],
      );
  }
}
