import 'package:TakeAway/catelog/menacc.dart';
import 'package:TakeAway/catelog/menjeans.dart';
import 'package:TakeAway/catelog/menshirt.dart';
import 'package:TakeAway/catelog/mensshoes.dart';
import 'package:TakeAway/catelog/womenacc.dart';
import 'package:TakeAway/catelog/womenshirt.dart';
import 'package:TakeAway/catelog/womenshoes.dart';
import 'package:TakeAway/catelog/womensjeans.dart';
import 'package:TakeAway/screens/bottom_navi_bar/cart.dart';
import 'package:TakeAway/screens/bottom_navi_bar/mainscreen.dart';
import 'package:TakeAway/screens/bottom_navi_bar/placedorder.dart';
import 'package:TakeAway/screens/bottom_navi_bar/profile/account.dart';
import 'package:TakeAway/screens/bottom_navi_bar/profile/profile.dart';
import 'package:TakeAway/screens/bottom_navi_bar/wishlist.dart';
import 'package:TakeAway/screens/cloathing/childcloathing.dart';
import 'package:TakeAway/screens/cloathing/menscloathing.dart';
import 'package:TakeAway/screens/cloathing/womencloathing.dart';
import 'package:TakeAway/screens/commingscoon.dart';
import 'package:TakeAway/screens/opening_screen.dart';
import 'package:flutter/material.dart';

class routes {
  static Route? ongenerateroute(RouteSettings settingg) {
    switch (settingg.name) {
      case '/initial':
        return MaterialPageRoute(builder: (context) => OpeningClass());
      case '/mainscreen':
        return MaterialPageRoute(builder: (context) => MainScreen());
      case '/profile':
        return MaterialPageRoute(builder: (context) => profile());
      case '/placedorder':
        return MaterialPageRoute(builder: (context) => placedorder());
      case '/cart':
        return MaterialPageRoute(builder: (context) => Cart());
      case '/wishlist':
        return MaterialPageRoute(builder: (context) => wishlist());
      case '/mencloathing':
        return MaterialPageRoute(builder: (context) => MensCloathing());
      case '/womencloathing':
        return MaterialPageRoute(builder: (context) => WomenCloathing());
      case '/childcloathing':
        return MaterialPageRoute(builder: (context) => ChildCloathing());
      case '/Account':
        return MaterialPageRoute(builder: (context) => Account());
      case '/mentshirt':
        return MaterialPageRoute(builder: (context) => MenTshirt());
      case '/menjeans':
        return MaterialPageRoute(builder: (context) => Menjeans());
      case '/menshoes':
        return MaterialPageRoute(builder: (context) => MenShoes());
      case '/menacc':
        return MaterialPageRoute(builder: (context) => Menacc());
      case '/womentshirt':
        return MaterialPageRoute(builder: (context) => WomenTshirt());
      case '/womenjeans':
        return MaterialPageRoute(builder: (context) => Womenenjeans());
      case '/womenshoes':
        return MaterialPageRoute(builder: (context) => WomeenShoes());
      case '/womenacc':
        return MaterialPageRoute(builder: (context) => Womenacc());
      case '/commingsoon':
        return MaterialPageRoute(builder: (context) => CommingSoon());
    }
    return null;
  }
}
