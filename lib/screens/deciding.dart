import 'package:TakeAway/modal/user.dart';
import 'package:TakeAway/screens/signin/signinsiginup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bottom_navi_bar/mainscreen.dart';

class Deciding extends StatelessWidget {
  const Deciding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Theuser?>(context);
    print(user);
    if (user == null) {
      return signinsignout();
    } else {
      return MainScreen();
    }
  }
}
