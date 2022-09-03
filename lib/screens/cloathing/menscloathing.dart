import 'package:TakeAway/widgetdirectory/Salesbanner.dart';
import 'package:TakeAway/widgetdirectory/bottomnavigationbar.dart';
import 'package:flutter/material.dart';

class MensCloathing extends StatefulWidget {
  const MensCloathing({Key? key}) : super(key: key);

  @override
  State<MensCloathing> createState() => _MensCloathingState();
}

class _MensCloathingState extends State<MensCloathing> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 243),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            redcolorcontainer(
                'assets/images/tshirt.png', 'Tshirt', '/mentshirt', context),
            bluecolorcontainer(
                'assets/images/jeanes.png', 'Jeanes', '/menjeans', context),
            redcolorcontainer(
                'assets/images/shoes.png', 'Shoes', '/menshoes', context),
            bluecolorcontainer(
                'assets/images/watches.png', 'Accessories', '/menacc', context),
            sales(context),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: BNavigator(context)),
    ));
  }
}
