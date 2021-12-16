import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'package:project/latitude.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;


String address = "";
class Maps extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    String htmlId = "7";
   final controller = Get.put(HomeController());
    controller.getLocation();

    print('hare');
    print(controller.latitude);
     address = add;
     print(address);


    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final myLatlng = LatLng(la, lo);
      print("hello");
      print(la);
      print(lo);

      final mapOptions = MapOptions()
        ..zoom = 10
        ..center = LatLng(la, lo);

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = GMap(elem, mapOptions);

      final marker =  Marker(MarkerOptions()
        ..position = myLatlng
        ..map = map
        ..title = 'address'
        ..label = 'h'
        ..icon ='https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
      );
      final infoWindow = InfoWindow(InfoWindowOptions()..content = contentString);
      marker.onClick.listen((event) => infoWindow.open(map, marker));


      return elem;
    });

    return HtmlElementView(viewType: htmlId);

  }


}

var contentString =  '<div id="content">' +
    '<div id="siteNotice">' +
    '</div>' + address +
    '<h1 id="firstHeading" class="firstHeading">address</h1>' +
    '<div id="bodyContent">' +
    '<p><b>Your Current Location</b> <b>From Google Maps</b>,  ' +
    'You can get Your CLimate Conditions and decide according ' +
    'India map is dispalyed on the right sides ' +
    'and colors are used to depicted the variety of climate ' +
    'at Your Location</p?  ' + '<script src = function produce(){ return "address"} >'+ '</script>'+ '<div style="color:red>'+'<script>document.write(produce())'+'</script>'+'</div>' +

    '</div>' +
    '</div>';