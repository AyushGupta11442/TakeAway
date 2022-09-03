import 'dart:async';

import 'package:TakeAway/screens/deciding.dart';

import 'package:flutter/material.dart';

class OpeningClass extends StatefulWidget {
  const OpeningClass({Key? key}) : super(key: key);

  @override
  State<OpeningClass> createState() => _OpeningClassState();
}

class _OpeningClassState extends State<OpeningClass> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Deciding())));
  }

  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 249, 243),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/first.png'))),
          ),
        ),
      ),
    ));
  }
}
