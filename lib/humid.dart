import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import 'SplashScreen.dart';
import 'package:get/get.dart';



class humid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {

  List<String> data = [
        'assets/HUMIDENG.png',
        'assets/HUMIDSUB.png',
        'assets/HUMIDWALLS.png',
        'assets/HUMIDROOF.png',




  ];

  Widget _buildItemList(BuildContext context, int index){
    final Size size = MediaQuery.of(context).size;


    return SizedBox(
      width: size.width / 1.5,
      height: size.height / 1.2,
      child: Image.asset(data[index],width: size.width ,height: size.height ),
    );


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SWIPE LEFT',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: ScrollSnapList(
                  itemBuilder: _buildItemList,
                  itemSize: 1000,
                  dynamicItemSize: true,
                  onReachEnd: (){
                    print('Done!');
                  },
                  itemCount: data.length,
                )
            ),
          ],
        ),
      ),
    );
  }
}














