import 'package:TakeAway/screens/bottom_navi_bar/cart.dart';
import 'package:TakeAway/screens/bottom_navi_bar/placedorder.dart';
import 'package:TakeAway/screens/bottom_navi_bar/homescreen.dart';
import 'package:TakeAway/screens/bottom_navi_bar/profile/profile.dart';
import 'package:TakeAway/screens/bottom_navi_bar/wishlist.dart';
import 'package:TakeAway/widgetdirectory/Salesbanner.dart';
import 'package:TakeAway/widgetdirectory/collectioncontainer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:TakeAway/data.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final navigationkey = GlobalKey<CurvedNavigationBarState>();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: backgroundcolor,
        animationDuration: Duration(milliseconds: 250),
        buttonBackgroundColor: redcolor,
        onTap: (value) => setState(() {
          index = value;
        }),
        items: items,
        height: 60,
        index: index,
      ),
    ));
  }
}


// appBar: AppBar(
//         backgroundColor: Color.fromARGB(210, 253, 86, 86),
//         leading: Center(
//             child:
//                 Image(image: AssetImage('assets/images/mainscreenlogo.png'))),
//         leadingWidth: 100,
//       ),
