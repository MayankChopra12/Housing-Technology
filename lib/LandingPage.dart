import 'package:flutter/material.dart';
import 'package:project/Authenticate/Merchant_Login.dart';
import 'package:project/authentication/login_screen/login_screen_view.dart';
import 'package:project/brickcal.dart';
import 'package:project/const/const.dart';

import 'package:project/pages/SettingsPage.dart';
import 'package:project/slideshow.dart';

import '3dtest.dart';
import 'Authenticate/LoginScree.dart';
import 'display.dart';

class LandingPage extends StatefulWidget {
  final String page;
  final String extra;

  const LandingPage({Key key, this.page, this.extra}) : super(key: key);
  @override
  _LandingPageState createState() => _LandingPageState();
}

List<String> pages = [
  'home',
  'about',
  'profile',
  'settings',
  'help',
  'merchant',
  'house'
];

List<IconData> icons = [
  Icons.home,
  Icons.maps_home_work ,
  Icons.person_rounded,
  Icons.home_max_outlined  ,
  Icons.calculate,
  Icons.account_box_outlined ,
  Icons.help,
];

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: icons.map((e) {
                  return NavItem(
                    selected: icons.indexOf(e) == pages.indexOf(widget.page),
                    icon: e,
                    onTap: () {
                      if (icons.indexOf(e) == 1) {
                        Navigator.pushNamed(
                            context, '/main/${pages[icons.indexOf(e)]}/Scott');
                      } else {
                        Navigator.pushNamed(
                            context, '/main/${pages[icons.indexOf(e)]}');
                      }
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Center(
                child: IndexedStack(
                  index: pages.indexOf(widget.page),
                  children: [
                    slide(),
                    LoginScreenView(),
                    LoginScreen(),
                    HomePage(),//Settings(),
                    brickcal(),
                    Merchant(),
                    Settings(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatefulWidget {
  final IconData icon;
  final bool selected;
  final Function onTap;

  const NavItem({Key key, this.icon, @required this.selected, this.onTap})
      : super(key: key);
  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(

        onTap: () {
          showAlert("Welcome");
          widget.onTap();

        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 375),
          width: double.infinity,
          height: 60.0,
          color: widget.selected ? Colors.black87 : Colors.white,
          child: Icon(
            widget.icon,
            color: widget.selected ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}


/// u can see the url is not working perfectly.....ryt?
/// this flutter beta is not working fine....
/// for u to see this working fine...
/// run in release mode... 
/// will show u how to do that....
/// 
/// thats it.... u can do the same... to see the perfect output... or else u can change the flutter channel to dev....
/// its working fine in dev channel.... 
/// 
/// :)