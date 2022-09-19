import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 249, 243),
      child: Center(
          child: SpinKitSquareCircle(
        color: Color.fromARGB(255, 211, 184, 249),
        size: 50,
      )),
    );
  }
}
