import 'package:flutter/material.dart';

// importing flutter cube package
import 'package:flutter_cube/flutter_cube.dart';

// creating class of stateful widget
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // adding necessary objects
  Object earth;
  Object astro;
  Object material;
  @override
  void initState() {

    // assigning name to the objects and providing the
    // object's file path (obj file)
    earth = Object(fileName: "assets/test.obj");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      // creating appbar
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "3D Objects in Flutter",
          style: TextStyle(
              color: Colors.greenAccent,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body:

      Container(


        // providing linear gradient to the
        // background with two colours
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.greenAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          children: [
            // Expanded(
            //
            //   // adding the cube function to
            //   // create the scene of our object
            //   child: Cube(
            //     onSceneCreated: (Scene scene) {
            //       scene.world.add(material);
            //       scene.camera.zoom = 10;
            //     },
            //   ),
            // ),

            // adding the earth object
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(earth);
                  scene.camera.zoom = 10;
                },
              ),
            ),


            // adding the astro object
            // Expanded(
            //   child: Cube(
            //     onSceneCreated: (Scene scene) {
            //       scene.world.add(astro);
            //       scene.camera.zoom = 10;
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}