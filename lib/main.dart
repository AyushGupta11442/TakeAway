import 'package:TakeAway/firebase/authantication.dart';
import 'package:TakeAway/modal/user.dart';
import 'package:TakeAway/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Theuser?>.value(
        value: Authservice().Streamuser,
        initialData: null,
        child: (MaterialApp(
          onGenerateRoute: routes.ongenerateroute,
          initialRoute: '/initial',
        )));
  }
}
