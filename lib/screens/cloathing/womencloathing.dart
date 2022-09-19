import 'package:TakeAway/widgetdirectory/Salesbanner.dart';
import 'package:TakeAway/widgetdirectory/collectioncontainer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:TakeAway/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WomenCloathing extends StatefulWidget {
  const WomenCloathing({Key? key}) : super(key: key);

  @override
  State<WomenCloathing> createState() => _WomenCloathingState();
}

class _WomenCloathingState extends State<WomenCloathing> {
  @override
  Widget build(BuildContext context) {
    return ((Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 243),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            redcolorcontainer(
                FontAwesomeIcons.shirt, 'Tshirt', '/womentshirt', context),
            bluecolorcontainer(
                FontAwesomeIcons.shirt, 'Jeanes', '/womenjeans', context),
            redcolorcontainer(
                FontAwesomeIcons.shoePrints, 'Shoes', '/womenshoes', context),
            bluecolorcontainer(
                Icons.watch, 'Accessories', '/womenacc', context),
            sales(context),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.white,
        animationDuration: Duration(milliseconds: 250),
        buttonBackgroundColor: Color.fromARGB(210, 253, 86, 86),
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
