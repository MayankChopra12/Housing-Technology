import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:project/Routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    runApp(bar());
  });
}


class bar extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<bar> {
  @override
  void initState() {
    super.initState();
    Flurorouter.setupRouter();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Housing Technology",
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}

// now we have to initialise the router....

// thats it...all things are done now i think... :)
