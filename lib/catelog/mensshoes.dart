import 'package:flutter/material.dart';
import 'package:TakeAway/data.dart';

class MenShoes extends StatefulWidget {
  const MenShoes({Key? key}) : super(key: key);

  @override
  State<MenShoes> createState() => _MenShoesState();
}

class _MenShoesState extends State<MenShoes> {
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
                          child: Text(tittle['object.$num']['discription'],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ))),
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
                showbottomscreen(context, mensshoes);
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
                            mensshoes['object.$num']['imagelink'])),
                    SizedBox(
                      height: 20,
                    ),
                    Text(mensshoes['object.$num']['name']),
                  ],
                ),
              )),
        ),
      ],
    )));
  }
}
