import 'dart:html';
import 'dart:js';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'calculator.dart';



class brickcal extends StatefulWidget {
  @override
  State<brickcal> createState() => _calculatorState();
}

class _calculatorState extends State<brickcal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var len;

  var bre;

  var area;
  var cost;

  final lenCon = new TextEditingController();

  final breCon = new TextEditingController();
  final areaCon = new TextEditingController();
  final costCon = new TextEditingController();
  final cemcostCon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text("Wall Brick Calculator"),
          elevation: 0,
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
                    Column(
                         children: [
                             Align(
                      alignment: Alignment.center,
                         child:

                          Container(

                         height: size.height / 2,
                          width: size.width / 2,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                          color: Color.fromRGBO(230, 233, 250, 1),
                          borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(100),
                            ),
                          ),
                          child:
                              Column(

                                children: [

                                  TextField(
                                    controller: lenCon,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Length in feet",
                                        labelText: "Length of wall"),
                                  ),
                                  TextField(
                                    controller: breCon,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Height in feet",
                                        labelText: "Height of wall"),
                                  ),
                                  TextField(
                                    controller: costCon,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                        hintText: "Enter the cost of 1 brick",
                                        labelText: "Cost of brick"),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  RaisedButton(
                                    onPressed: () {
                                      setState(() {
                                        len = lenCon.text;
                                        len = int.parse(len);
                                        bre = breCon.text;
                                        bre = int.parse(bre);
                                        cost = costCon.text;
                                        cost = int.parse(cost);
                                        area = ((1.05 * (len * bre * 0.75) / 0.084)).toString();
                                        cost =
                                            (cost * (1.05 * (len * bre * 0.75) / 0.084)).toString();
                                      });
                                    },
                                    child: Text("Calculate"),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text('$area'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text('Bricks required for the wall'),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text('$cost'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text('Cost of the bricks required for the wall'),
                                    ],
                                  ),


                                ],
                              )


                          ),

                            ),
                                ],
                                 ),


              SizedBox(
                height: 40,
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: size.height / 7,
                  width: size.width / 7,
                  alignment: Alignment.bottomRight,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(230, 233, 250, 1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(1000),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.to(()=> calculator());
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: size.width / 12,
                    ),
                  ),
                ),
              ),








            ],
          ),
        ),
    );
  }
}