import 'package:TakeAway/data.dart';
import 'package:TakeAway/widgetdirectory/placedorderbox.dart';
import 'package:flutter/material.dart';

import '../../widgetdirectory/bottomnavigationbar.dart';
import '../../widgetdirectory/wishlistbox.dart';

class placedorder extends StatefulWidget {
  const placedorder({Key? key}) : super(key: key);

  @override
  State<placedorder> createState() => _placedorderState();
}

class _placedorderState extends State<placedorder> {
  List<Widget> buyeditems = [];
  @override
  Widget build(BuildContext context) {
    buyed.forEach(((key, value) {
      value.forEach((element) {
        buyeditems
            .add(wishlistbox(key[element]['name'], key[element]['imagelink']));
      });
    }));
    wishlistmap.forEach(((key, value) {
      for (var element in value) {
        String a = key[element]['price'].toString();
      }
    }));

    return (Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 243),
      body: ListView(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 19, 91, 96),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Placed Order',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: buyeditems,
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(items: BNavigator(context)),
    ));
  }
}
