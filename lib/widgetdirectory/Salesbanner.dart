import 'package:flutter/material.dart';

sales(context) {
  return (SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        InkWell(
          child: Container(
            padding: EdgeInsets.all(50),
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://images.pexels.com/photos/5872348/pexels-photo-5872348.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=699.825&fit=crop&h=1133.05',
                  )),
            ),
          ),
          onTap: (() {
            Navigator.pushNamed(context, '/commingsoon');
          }),
        ),
        SizedBox(width: 20),
        InkWell(
          child: Container(
            padding: EdgeInsets.all(50),
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://images.pexels.com/photos/3905875/pexels-photo-3905875.jpeg?auto=compress&cs=tinysrgb&w=1600',
                  )),
            ),
          ),
          onTap: (() {
            Navigator.pushNamed(context, '/commingsoon');
          }),
        ),
        SizedBox(width: 20),
        InkWell(
          child: Container(
            padding: EdgeInsets.all(50),
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://images.pexels.com/photos/5872348/pexels-photo-5872348.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=699.825&fit=crop&h=1133.05',
                  )),
            ),
          ),
          onTap: (() {
            Navigator.pushNamed(context, '/commingsoon');
          }),
        ),
        SizedBox(width: 20),
        InkWell(
          child: Container(
            padding: EdgeInsets.all(50),
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://images.pexels.com/photos/5868276/pexels-photo-5868276.jpeg?auto=compress&cs=tinysrgb&w=1600',
                  )),
            ),
          ),
          onTap: (() {
            Navigator.pushNamed(context, '/commingsoon');
          }),
        ),
        SizedBox(width: 20),
      ],
    ),
  ));
}
