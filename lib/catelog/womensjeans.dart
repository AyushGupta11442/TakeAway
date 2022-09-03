import 'package:flutter/material.dart';
import 'package:TakeAway/data.dart';

class Womenenjeans extends StatefulWidget {
  const Womenenjeans({Key? key}) : super(key: key);

  @override
  State<Womenenjeans> createState() => _WomenenjeansState();
}

class _WomenenjeansState extends State<Womenenjeans> {
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
                showbottomscreen(context, womenjeans);
              },
              onHorizontalDragStart: (details) {
                setState(() {
                  (num >= 5) ? num = 1 : num++;
                });
              },
              onTap: (() {
                setState(() {
                  addValueTocartMap(cartmap, womenjeans, 'object.$num');
                });
              }),
              onDoubleTap: (() {
                setState(() {
                  addValueTocartMap(wishlistmap, womenjeans, 'object.$num');
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
                            womenjeans['object.$num']['imagelink'])),
                    SizedBox(
                      height: 20,
                    ),
                    Text(womenjeans['object.$num']['name'],
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
