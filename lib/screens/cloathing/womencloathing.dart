import 'package:TakeAway/widgetdirectory/Salesbanner.dart';
import 'package:TakeAway/widgetdirectory/bottomnavigationbar.dart';
import 'package:flutter/material.dart';

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
                'assets/images/tshirt.png', 'Tshirt', '/womentshirt', context),
            bluecolorcontainer(
                'assets/images/jeanes.png', 'Jeanes', '/womenjeans', context),
            redcolorcontainer(
                'assets/images/shoes.png', 'Shoes', '/womenshoes', context),
            bluecolorcontainer('assets/images/watches.png', 'Accessories',
                '/womenacc', context),
            sales(context),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: BNavigator(context)),
    )));
  }
}
