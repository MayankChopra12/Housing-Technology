import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:project/Register.dart';
import 'package:project/brickcal.dart';

import 'package:project/Authenticate/LoginScree.dart';
import 'package:get/get.dart';


import 'display.dart';
import 'latitude.dart';


String _appIconPath = "assets/photo.jpg"; //image(home)

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //GetMaterialApp
      //debugShowCheckedModeBanner: false,// new line
      home: Scaffold(
        body:Tap(), // for authentication start use Authentication,

      ),
    );
  }
}

class Tap extends StatefulWidget {
  @override
  StartView createState() {
    return StartView();
  }
}

class StartView extends State<Tap> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF15202B),
        appBar: AppBar(
          title: const Center(
            child: Text("Welcome"),
          ),
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          Row(
        children:[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: const Text("About Us")),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: const Text("Want to Chat with Merchant \n Click Here!")),
          Padding(padding: EdgeInsets.symmetric(horizontal: 270)),
          ElevatedButton(onPressed: (){
            Get.to(()=> brickcal());

          }, child: Text("Brick Calculator")),

            ],),

            Row(


              children: [

                Padding(padding: EdgeInsets.symmetric(horizontal: 40)),
                Column(
                  children: [

                    // ElevatedButton(onPressed: (){
                    //   Get.to(()=> calculator());
                    //
                    // }, child: Text("Get YOur Calculation Done //check")),



                    const Icon(
                      Icons.beach_access,
                      color: Colors.pink,
                      size: 24.0,
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 550)),
                    Image.asset("assets/construction.jpg", width: 200),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    const Text("Enhance House Structure",
                    style:
                      TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 24.0,
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    Image.asset("assets/climate.png", width: 150),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    const Text("Detailed Climate Analysis",

                      style:
                      TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Center(
                  child: Image.asset(_appIconPath, width: 200),
                ),

                const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                AnimatedDefaultTextStyle(
                    child: const Text("AlL YOur NEed "),
                    style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    duration: const Duration(microseconds: 300)),
                Image.asset("assets/arrow.jpg", width: 100),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),//arrow
                ElevatedButton(onPressed: (){
                 controller.getLocation();
                 Get.to(()=> display());

                }, child: Text("Maps")),
                const Icon(
                  Icons.music_note,
                  color: Colors.pink,
                  size: 24.0,
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 400)),
                    Image.asset("assets/customer.png", width: 200),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                    const Text("Direct Contact",
                      style:
                      TextStyle(
                        color: Colors.white,
                      ),

                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


