import 'package:TakeAway/data.dart';
import 'package:flutter/material.dart';

redcolorcontainer(
    IconData icon, String text, String location, BuildContext context) {
  return Column(
    children: [
      InkWell(
        child: Container(
          height: 50,
          width: 270,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: redcolor),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                "$text",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
        ),
        onTap: (() {
          Navigator.pushNamed(context, location);
        }),
      ),
      SizedBox(
        height: 20,
      )
    ],
  );
}

bluecolorcontainer(
    IconData icon, String text, String location, BuildContext context) {
  return Column(
    children: [
      InkWell(
        child: Row(
          children: [
            SizedBox(
              width: 70,
            ),
            Container(
              height: 50,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: bluecolor,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    icon,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "$text",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        onTap: (() {
          Navigator.pushNamed(context, location);
        }),
      ),
      SizedBox(
        height: 20,
      )
    ],
  );
}
