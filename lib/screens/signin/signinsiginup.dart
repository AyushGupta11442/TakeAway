import 'package:TakeAway/screens/signin/signinscreen.dart';
import 'package:TakeAway/screens/signin/signupscreen.dart';
import 'package:flutter/material.dart';

class signinsignout extends StatefulWidget {
  const signinsignout({Key? key}) : super(key: key);

  @override
  State<signinsignout> createState() => _signinsignoutState();
}

class _signinsignoutState extends State<signinsignout> {
  bool showsigin = true;
  void toggleview() {
    setState(() => showsigin = !showsigin);
  }

  @override
  Widget build(BuildContext context) {
    if (showsigin) {
      return Signin(toggleview: toggleview);
    } else {
      return Signup(toggleview: toggleview);
    }
  }
}
