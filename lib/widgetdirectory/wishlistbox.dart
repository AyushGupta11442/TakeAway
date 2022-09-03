import 'package:TakeAway/data.dart';
import 'package:flutter/material.dart';

wishlistbox(dynamic title, dynamic image) {
  return Column(
    children: [
      (Container(
          height: 100,
          width: 300,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 19, 91, 96),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  color: Colors.white,
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
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    child: Container(
                      color: Color.fromARGB(210, 253, 86, 86),
                      height: 30,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Add to cart'),
                      ),
                    ),
                    onTap: () {
                      addValueTocartMap(cartmap, menshirt, 'object.$num');
                      print(wishlistmap);
                    },
                  ),
                )
              ],
            ),
          ))),
      SizedBox(height: 20),
    ],
  );
}
//  addValueTocartMap(cartmap, menshirt, 'object.$num');
//                     print(wishlistmap);
