import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:get/get.dart';
import 'package:project/latitude.dart';



String _appIconPath = "assets/india.png"; //image(home)


class demo  extends StatelessWidget{

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(

        // appBar: AppBar(
        //   title: const Center(
        //     child: Text("demo"),
        //   ),
        // ),
        body: Tap(),


        ),

    );
  }
}

class Tap extends StatefulWidget{

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<Tap> {

  var locationMessage = "";

  void getCurrentLocation() async{
    var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator.getLastKnownPosition();
    print(lastPosition);
    print(locationMessage);
    print(position);

    setState(() {
      locationMessage = "$position";

      Text('$la');
      Text('$lo');
    });
  }

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
     final controller = Get.put(HomeController());
    //controller.getLocation();


    return
      Column(

        children: [

          ElevatedButton(onPressed: (){
            controller.getLocation();

          }
          , child: Text("press")),







            //Image.asset(_appIconPath,height: size.height ),
// Padding(padding: EdgeInsets.all(20)),
//           SizedBox(
//             height: 4,
//             child: Text("hello"),
//           ),
//           Text(
//             'User Location',
//             style: TextStyle(
//                 color: Colors.yellow,
//                 fontSize: 30,
//                 decoration: TextDecoration.underline),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//            Text(
//               controller.latitude.value,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 25,
//               ),
//             ),
//
//           SizedBox(
//             height: 6,
//           ),
//           Obx(
//                 () => Text(
//               controller.longitude.value,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 25,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 6,
//           ),
//           Obx(
//                 () => Text(
//               controller.address.value,
//               style: TextStyle(color: Colors.white, fontSize: 25),
//             ),
//           ),



              ],








      );
  }
}




