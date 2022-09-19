import 'package:TakeAway/data.dart';
import 'package:flutter/material.dart';

cartOrderBox(dynamic title, dynamic image) {
  return Column(
    children: [
      (Container(
          height: 150,
          width: 325,
          decoration: BoxDecoration(
              color: greencolor,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  color: Colors.transparent,
                  height: 80,
                  width: 80,
                  child: Image(image: NetworkImage(image)),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        child: Container(
                          color: redcolor,
                          height: 30,
                          width: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Delete'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ))),
      SizedBox(
        height: 20,
      ),
    ],
  );
}

TotalCartOrderBox(String total) {
  return Center(
    child: (Container(
      height: 150,
      width: 325,
      decoration: BoxDecoration(
          color: redcolor, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      total,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                child: Container(
                  color: greencolor,
                  height: 30,
                  width: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Conferm'),
                  ),
                ),
                onTap: () {
                  buyed = cartmap;
                  cartmap = {};
                },
              ),
            )
          ],
        ),
      ),
    )),
  );
}
