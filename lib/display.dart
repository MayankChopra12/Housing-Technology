import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/LandingPage.dart';
import 'package:project/Trowetdry.dart';
import 'package:project/maps.dart';
import 'package:get/get.dart ';
import 'package:project/moutane.dart';
import 'package:project/semiarid.dart';
import 'package:project/tropwet.dart';

import 'SplashScreen.dart';
import 'arid.dart';
import 'authentication/login_screen/login_screen_view.dart';
import 'humid.dart';
import 'latitude.dart';
import 'main.dart';

String _appIconPath = "assets/india.png";

class display extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final Size size = MediaQuery.of(context).size;

    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(


          body:

          Row(
            children: [
              Image.asset(_appIconPath,height: size.height),

              Padding(padding: EdgeInsets.symmetric(horizontal: 150 )),
              Column(
                children:[
                  Padding(padding: EdgeInsets.symmetric(vertical: 40)),

                  SizedBox(
                    width: 200.0,
                    height: 50.0,

                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red, //background color of button
                            side: BorderSide(width:3, color:Colors.brown), //border width and color

                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder( //to set border radius to button
                                borderRadius: BorderRadius.circular(30)
                            ),

                            padding: EdgeInsets.all(20) //content padding inside button
                        ),
                        onPressed: (){
                          controller.getLocation();
                          Get.to(()=> Maps());
                        },
                        child: Text("Get Exact Location")
                    ),
                  ),





                  Padding(padding: EdgeInsets.symmetric(vertical: 20)),

                  SizedBox(
                      width: 200.0,
                      height: 50.0,

                      child:
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.purple, //background color of button
                              side: BorderSide(width:3, color:Colors.brown), //border width and color
                              elevation: 3, //elevation of button
                              shape: RoundedRectangleBorder( //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              padding: EdgeInsets.all(20) //content padding inside button
                          ),
                          onPressed: (){
                            Get.to(()=> mountane());
                          },
                          child: Text("Montane")
                      ),



                  ),








                  Padding(padding: EdgeInsets.symmetric(vertical: 20)),


                  SizedBox(
                      width: 200.0,
                      height: 50.0,

                      child:
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue, //background color of button
                              side: BorderSide(width:3, color:Colors.brown), //border width and color
                              elevation: 15, //elevation of button
                              shape: RoundedRectangleBorder( //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              padding: EdgeInsets.all(20) //content padding inside button
                          ),
                          onPressed: (){
                            Get.to(()=> humid());
                          },
                          child: Text("Humid Subtropical")
                      ),

                  ),




                  Padding(padding: EdgeInsets.symmetric(vertical: 20)),

                  SizedBox(
                    width: 200.0,
                    height: 50.0,

                    child:
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen, //background color of button
                            side: BorderSide(width:3, color:Colors.brown), //border width and color
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder( //to set border radius to button
                                borderRadius: BorderRadius.circular(30)
                            ),
                            padding: EdgeInsets.all(20) //content padding inside button
                        ),
                        onPressed: (){
                          Get.to(()=> tropicaldry());
                        },
                        child: Text("Tropical wet and dry")
                    ),

                  ),





                  Padding(padding: EdgeInsets.symmetric(vertical: 20)),


                  SizedBox(
                    width: 200.0,
                    height: 50.0,

                    child:
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green, //background color of button
                            side: BorderSide(width:3, color:Colors.brown), //border width and color
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder( //to set border radius to button
                                borderRadius: BorderRadius.circular(30)
                            ),
                            padding: EdgeInsets.all(20) //content padding inside button
                        ),
                        onPressed: (){
                          Get.to(()=> trowet());
                        },
                        child: Text("Tropical wet")
                    ),

                  ),






                  Padding(padding: EdgeInsets.symmetric(vertical: 20)),


                  SizedBox(
                      width: 200.0,
                      height: 50.0,

                      child:
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.yellow, //background color of button
                              side: BorderSide(width:3, color:Colors.brown), //border width and color
                              elevation: 3, //elevation of button
                              shape: RoundedRectangleBorder( //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              padding: EdgeInsets.all(20) //content padding inside button
                          ),
                          onPressed: (){
                            Get.to(()=> semiarid());
                          },
                          child: Text("Semi - Arid")
                      ),


                  ),



                  Padding(padding: EdgeInsets.symmetric(vertical: 20)),


                  SizedBox(
                    width: 200.0,
                    height: 50.0,

                    child:

                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.redAccent, //background color of button
                            side: BorderSide(width:3, color:Colors.brown), //border width and color
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder( //to set border radius to button
                                borderRadius: BorderRadius.circular(30)
                            ),
                            padding: EdgeInsets.all(20) //content padding inside button
                        ),
                        onPressed: (){
                          Get.to(()=> arid());
                        },
                        child: Text("Arid")
                    ),

                  ),






                ],
              ),

              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: size.height / 10,
                  width: size.width / 15,
                  alignment: Alignment.topRight,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(230, 233, 250, 1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(1000),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.to(()=> SplashScreen());

                    },
                    child: Icon(
                      Icons.logout,
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