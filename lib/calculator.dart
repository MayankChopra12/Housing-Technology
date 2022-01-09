import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:project/SplashScreen.dart';
import 'package:project/brickcal.dart';

class calculator extends StatefulWidget {
  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
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
  int len = 1;

  int bre  = 1;

  double cost  = 1;
  String c = "";
  double area =  1;

  double cem  = 1;
  String cement  = "";
  double cembag = 1;
  String bag = "";
  int dd = 0;
  int cc = 0;
  int sand = 0;
  double s = 0;
  String sd= "";
  double sar = 0;
  String r = "";
  int d = 0;

  final lenCon = new TextEditingController();
  final sandCon = new TextEditingController();
  final breCon = new TextEditingController();
  final areaCon = new TextEditingController();
  final costCon = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text("Construction Material Calculator"),
          actions: [
            IconButton(icon: Icon(Icons.home), onPressed: () =>  Get.to(()=> SplashScreen()),)
          ],
          elevation: 0,
          backgroundColor: Colors.teal,
        ),
        body:  Column(
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
                                    hintText: "Enter Cost of one Cement Bag",
                                    labelText: "Cost of Cement Bag"),
                              ),

                              TextField(
                                controller: sandCon,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    hintText: "Enter Cost of 1kg Sand",
                                    labelText: "Enter Cost of 1kg Sand"),
                              ),

                              SizedBox(
                                height: 20,
                              ),
                              RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    //len = lenCon.text;
                                    len = int.parse(lenCon.text);

                                    //bre = breCon.text;
                                    bre = int.parse(breCon.text);

                                    area = ((1.05 * (len * bre * 0.75) / 0.084));//toString();
                                    //area = int.parse(area);

                                    cem = (area * 0.12);
                                    dd= cem.ceil();
                                    cement = dd.toString(); // cement
                                    // cem = int.parse(cem);

                                    cembag = (cem / 50);
                                    cc= cembag.ceil();

                                    bag = cc.toString(); //no of bags


                                    cost = double.parse(costCon.text);

                                    //cost = int.parse(cost);
                                    cost = (cc * cost);
                                    c = cost.toString();
                                    s = (area * 0.000524) * 1450 * int.parse(sandCon.text);
                                     sand = s.ceil();
                                     sd = sand.toString();
                                      sar = (area * 0.000524) * 1450;
                                      d = sar.ceil();
                                      r = d.toString();

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
                                      alignment: Alignment.center,
                                      child: Text('$cement'), //check
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text('Cement required for the wall in KG'),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text('$bag'), //check
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text('Cement bags required for the wall'),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text('$c'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text('Cost of Cement bags required for the wall'),
                                ],
                              ),

                              Row(
                                children: <Widget>[
                                  Container(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text('$r'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(' Sand Required for Wall in Kg'),
                                ],
                              ),

                              Row(
                                children: <Widget>[
                                  Container(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text('$sd'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text('Cost of Sand for wall'),
                                ],
                              ),


                            ],
                          ),



                    ),

                  ),




                ],
              ),

              SizedBox(
                height: 60,
              ),


              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: size.height / 7,
                  width: size.width / 7,
                  alignment: Alignment.bottomLeft,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(230, 233, 250, 1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(1000),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.to(()=> brickcal());
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: size.width / 12,
                    ),
                  ),
                ),
              ),


















            ],

        ),
    );
  }
}
