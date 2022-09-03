import 'package:flutter/material.dart';
import 'package:TakeAway/data.dart';

class WomeenShoes extends StatefulWidget {
  const WomeenShoes({Key? key}) : super(key: key);

  @override
  State<WomeenShoes> createState() => _WomeenShoesState();
}

class _WomeenShoesState extends State<WomeenShoes> {
  final __formkey = GlobalKey<FormState>();
  int num = 1;
  @override
  Widget build(BuildContext context) {
    void showbottomscreen(BuildContext context, Map tittle) {
      print(num);
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.all(16),
              child: Form(
                  key: __formkey,
                  child: Column(
                    children: [
                      Text(
                        tittle['object.$num']['name'],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(tittle['object.$num']['discription'])),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text('Price:'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(tittle['object.$num']['price'].toString()),
                        ],
                      )
                    ],
                  )),
            );
          });
    }

    return (Scaffold(
        body: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        InkWell(
          child: GestureDetector(
              onVerticalDragStart: (details) {
                showbottomscreen(context, womenshoes);
              },
              onHorizontalDragStart: (details) {
                setState(() {
                  (num >= 5) ? num = 1 : num++;
                });
              },
              onTap: (() {
                setState(() {
                  addValueTocartMap(cartmap, mensshoes, 'object.$num');
                });
              }),
              onDoubleTap: (() {
                setState(() {
                  addValueTocartMap(wishlistmap, mensshoes, 'object.$num');
                  number.add(num);
                });
              }),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Image(
                        image: NetworkImage(
                            womenshoes['object.$num']['imagelink'])),
                    SizedBox(
                      height: 20,
                    ),
                    Text(womenshoes['object.$num']['name'],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              )),
        ),
      ],
    )));
  }
}
