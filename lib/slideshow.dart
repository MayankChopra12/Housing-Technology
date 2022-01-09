import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';



class slide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Demo'),
        // ),
        body:
        Align(
        alignment: Alignment.centerRight,
        child:

        ImageSlideshow(


          /// Width of the [ImageSlideshow].
          width: size.width / 1.1,

          /// Height of the [ImageSlideshow].
          height:size.height / 0.5 ,

          /// The page to show when first creating the [ImageSlideshow].
          initialPage: 0,

          /// The color to paint the indicator.
          indicatorColor: Colors.blue,

          /// The color to paint behind th indicator.
          indicatorBackgroundColor: Colors.grey,

          /// The widgets to display in the [ImageSlideshow].
          /// Add the sample image file into the images folder
          children: [
            Image.asset(
              'assets/HouseStructure.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/chat.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/cal.png',
              fit: BoxFit.cover,
            ),

          //   ElevatedButton(onPressed: (){
          //     Get.to(() => App());
          //   }, child: Text("CLick Here to Enter"))
          ],

          /// Called whenever the page in the center of the viewport changes.
          onPageChanged: (value) {
            print('Page changed: $value');
          },

          /// Auto scroll interval.
          /// Do not auto scroll with null or 0.
          autoPlayInterval: 3000,

          /// Loops back to first slide.
          isLoop: true,
        ),
        ),
      ),
    );
  }
}