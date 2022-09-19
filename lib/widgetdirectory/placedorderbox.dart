import 'package:flutter/material.dart';
import 'package:TakeAway/data.dart';

orderbox() {
  return (Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(
          color: greencolor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              color: Colors.white,
              height: 80,
              width: 80,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  'boot',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'ayush the\n--------\n',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              child: Container(
                color: redcolor,
                height: 30,
                width: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Track'),
                ),
              ),
            )
          ],
        ),
      )));
}
