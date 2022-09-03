import 'package:TakeAway/widgetdirectory/cartboxes.dart';
import 'package:flutter/material.dart';
import 'package:TakeAway/data.dart';
import '../../widgetdirectory/bottomnavigationbar.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int total = 0;
  List<Widget> cartitems = [];

  @override
  Widget build(BuildContext context) {
    cartmap.forEach(((key, value) {
      value.forEach((element) {
        cartitems
            .add(cartOrderBox(key[element]['name'], key[element]['imagelink']));
      });
    }));
    cartmap.forEach(((key, value) {
      for (var element in value) {
        String a = key[element]['price'].toString();
        total += int.parse(a);
      }
    }));
    List<Widget> carttotal = [TotalCartOrderBox(total.toString())];
    cartitems += carttotal;
    return (Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 249, 243),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
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
                      'Cart',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: cartitems,
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: BNavigator(context))));
  }
}
