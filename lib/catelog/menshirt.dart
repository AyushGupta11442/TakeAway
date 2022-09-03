import 'package:TakeAway/screens/bottom_navi_bar/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:TakeAway/data.dart';

class MenTshirt extends StatefulWidget {
  const MenTshirt({Key? key}) : super(key: key);

  @override
  State<MenTshirt> createState() => _MenTshirtState();
}

class _MenTshirtState extends State<MenTshirt> {
  final __formkey = GlobalKey<FormState>();
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
        body: Center(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: InkWell(
              child: GestureDetector(
                  onVerticalDragStart: (details) {
                    showbottomscreen(context, menshirt);
                  },
                  onHorizontalDragStart: (details) {
                    setState(() {
                      (num >= 5) ? num = 1 : num++;
                    });
                  },
                  onTap: (() {
                    setState(() {
                      addValueTocartMap(cartmap, menshirt, 'object.$num');
                    });
                  }),
                  onDoubleTap: (() {
                    setState(() {
                      addValueTocartMap(wishlistmap, menshirt, 'object.$num');
                      number.add(num);
                    });
                  }),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Image(
                              image: NetworkImage(
                                  menshirt['object.$num']['imagelink'])),
                          SizedBox(
                            height: 20,
                          ),
                          Text(menshirt['object.$num']['name'],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    )));
  }
}
