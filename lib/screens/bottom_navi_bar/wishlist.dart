import 'package:TakeAway/widgetdirectory/wishlistbox.dart';
import 'package:flutter/material.dart';

import '../../data.dart';
import '../../widgetdirectory/bottomnavigationbar.dart';

class wishlist extends StatefulWidget {
  const wishlist({Key? key}) : super(key: key);

  @override
  State<wishlist> createState() => _wishlistState();
}

class _wishlistState extends State<wishlist> {
  int total = 0;
  List<Widget> wishlistitems = [];

  @override
  Widget build(BuildContext context) {
    wishlistmap.forEach(((key, value) {
      value.forEach((element) {
        wishlistitems
            .add(wishlistbox(key[element]['name'], key[element]['imagelink']));
      });
    }));
    wishlistmap.forEach(((key, value) {
      for (var element in value) {
        String a = key[element]['price'].toString();
        total += int.parse(a);
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
                  'Wishlist',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: wishlistitems,
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(items: BNavigator(context)),
    ));
  }
}
