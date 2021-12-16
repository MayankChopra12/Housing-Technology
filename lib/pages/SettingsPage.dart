import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.amber,
      child:


          Center(child:


          Column(
            children: [



              Image.asset("assets/photo.jpg", height: size.height / 1.2),


              Text('Developed By ... :Deepanshu Kumar(127), Mayank Chopra(157)\n Contact us at projectlab337@gmail.com',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),



            ],
          ),

    ),










    );
  }
}