import 'package:TakeAway/widgetdirectory/Salesbanner.dart';
import 'package:TakeAway/widgetdirectory/collectioncontainer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:TakeAway/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChildCloathing extends StatefulWidget {
  const ChildCloathing({Key? key}) : super(key: key);

  @override
  State<ChildCloathing> createState() => _ChildCloathingState();
}

class _ChildCloathingState extends State<ChildCloathing> {
  @override
  Widget build(BuildContext context) {
    return ((Scaffold(
      backgroundColor: backgroundcolor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            redcolorcontainer(FontAwesomeIcons.shirt, 'Tshirt', '', context),
            bluecolorcontainer(FontAwesomeIcons.shirt, 'Jeanes', '', context),
            redcolorcontainer(
                FontAwesomeIcons.shoePrints, 'Shoes', '', context),
            bluecolorcontainer(Icons.watch, 'Accessories', '', context),
            sales(context),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: backgroundcolor,
        animationDuration: Duration(milliseconds: 250),
        buttonBackgroundColor: redcolor,
        onTap: (value) => setState(() {
          index = value;
          Navigator.pushNamed(context, '/mainscreen');
        }),
        items: items,
        height: 60,
        index: index,
      ),
    )));
  }
}
