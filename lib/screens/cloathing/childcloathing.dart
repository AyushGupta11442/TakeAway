import 'package:TakeAway/widgetdirectory/Salesbanner.dart';
import 'package:TakeAway/widgetdirectory/bottomnavigationbar.dart';
import 'package:flutter/material.dart';

class ChildCloathing extends StatefulWidget {
  const ChildCloathing({Key? key}) : super(key: key);

  @override
  State<ChildCloathing> createState() => _ChildCloathingState();
}

class _ChildCloathingState extends State<ChildCloathing> {
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
                'assets/images/tshirt.png', 'Tshirt', '', context),
            bluecolorcontainer(
                'assets/images/jeanes.png', 'Jeanes', '', context),
            redcolorcontainer('assets/images/shoes.png', 'Shoes', '', context),
            bluecolorcontainer(
                'assets/images/watches.png', 'Accessories', '', context),
            sales(context),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: BNavigator(context)),
    )));
  }
}
