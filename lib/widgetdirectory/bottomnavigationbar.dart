import 'package:TakeAway/screens/bottom_navi_bar/cart.dart';
import 'package:flutter/material.dart';

BNavigator(BuildContext context) {
  return [
    BottomNavigationBarItem(
      icon: InkWell(
        child: Icon(
          Icons.settings,
          color: Colors.black,
        ),
        onTap: () {
          Navigator.pushNamed(context, '/profile');
        },
      ),
      label: 'Setting',
    ),
    BottomNavigationBarItem(
        icon: InkWell(
          child: Image(
            image: AssetImage('assets/images/order.png'),
            height: 20,
            width: 20,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/placedorder');
          },
        ),
        label: 'Orders'),
    BottomNavigationBarItem(
      icon: InkWell(
        child: Image(
          image: AssetImage('assets/images/home.png'),
          height: 20,
          width: 20,
        ),
        onTap: () {
          Navigator.pushNamed(context, '/mainscreen');
        },
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: InkWell(
        child: Image(
          image: AssetImage('assets/images/cart.png'),
          height: 20,
          width: 20,
        ),
        onTap: () {
          Navigator.pushNamed(context, '/cart');
        },
      ),
      label: 'Cart',
    ),
    BottomNavigationBarItem(
      icon: InkWell(
        child: Image(
          image: AssetImage('assets/images/liked.png'),
          height: 20,
          width: 20,
        ),
        onTap: () {
          Navigator.pushNamed(context, '/wishlist');
        },
      ),
      label: 'Wishlist',
    )
  ];
}

redcolorcontainer(
    String imagelocation, String text, String location, BuildContext context) {
  return Column(
    children: [
      InkWell(
        child: Container(
          color: Color.fromARGB(210, 253, 86, 86),
          height: 50,
          width: 270,
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Image(
                image: AssetImage('$imagelocation'),
                height: 30,
                width: 30,
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                "$text",
                style: TextStyle(fontSize: 30),
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
    String imagelocation, String text, String location, BuildContext context) {
  return Column(
    children: [
      InkWell(
        child: Row(
          children: [
            SizedBox(
              width: 70,
            ),
            Container(
              color: Color.fromARGB(255, 19, 88, 149),
              height: 50,
              width: 270,
              child: Row(
                children: [
                  InkWell(
                    child: Image(
                      image: AssetImage('$imagelocation'),
                      height: 30,
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "$text",
                    style: TextStyle(fontSize: 30),
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
