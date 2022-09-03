// import 'package:TakeAway/firebase/authantication.dart';
// import 'package:TakeAway/widgetdirectory/loading.dart';
// import 'package:flutter/material.dart';

// class Signin extends StatefulWidget {
//   final Function toggleview;
//   Signin({required this.toggleview});
//   @override
//   State<Signin> createState() => _SigninState();
// }

// class _SigninState extends State<Signin> {
//   final Authservice __auth =
//       Authservice(); //this create instance of auth service and named it as __auth so that after in the file we can access the sigin meathod using __auth

//   final __formkey = GlobalKey<FormState>();

//   bool loading = false;

//   var val;
//   String email = '';
//   String password = '';
//   String error = '';
//   @override
//   Widget build(BuildContext context) {
//     return loading
//         ? Loading()
//         : Scaffold(
//             backgroundColor: Color.fromARGB(255, 255, 249, 243),
//             body: Form(
//               key: __formkey,
//               child: Column(
//                 children: [
//                   Image(image: AssetImage('assets/images/first.png')),
//                   Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: 521,
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 19, 91, 96),
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20),
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(25),
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 20,
//                           ),
//                           CircleAvatar(
//                             radius: 50,
//                             backgroundColor: Colors.white,
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               hintText: 'Email',
//                               filled: true,
//                               fillColor: Color.fromRGBO(255, 255, 255, 1),
//                               enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.white)),
//                               focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.pink)),
//                             ),
//                             validator: (val) =>
//                                 val!.isEmpty ? 'Enter email' : null,
//                             onChanged: (val) {
//                               setState(() => email = val);
//                             },
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           TextFormField(
//                             obscureText: true,
//                             decoration: InputDecoration(
//                               hintText: 'Password',
//                               filled: true,
//                               fillColor: Color.fromRGBO(255, 255, 255, 1),
//                               enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.white)),
//                               focusedBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.pink)),
//                             ),
//                             validator: (val) => val!.length < 6
//                                 ? 'Enter a password 6+ chars long'
//                                 : null,
//                             onChanged: (val) {
//                               setState(() => password = val);
//                             },
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           ElevatedButton(
//                               onPressed: () async {
//                                 if (__formkey.currentState!.validate()) {
//                                   setState(() {
//                                     loading = true;
//                                   });
//                                   // this check every validate and run each function
//                                   dynamic result =
//                                       await __auth.signinwithemailandpassword(
//                                           email, password);

//                                   if (result == null) {
//                                     setState(() {
//                                       error = 'Give rigth credentials';
//                                       loading = false;
//                                     });
//                                   } else {}
//                                 }
//                               },
//                               child: Text('Sign In')),
//                           SizedBox(
//                             height: 12,
//                           ),
//                           Text(
//                             error,
//                             style: TextStyle(color: Colors.red, fontSize: 14.0),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           ElevatedButton(
//                               onPressed: () {
//                                 widget.toggleview();
//                               },
//                               child: Text('Sign Up'))
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ));
//   }
// }

import 'package:TakeAway/firebase/authantication.dart';
import 'package:TakeAway/widgetdirectory/loading.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  final Function toggleview;
  Signin({required this.toggleview});
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final Authservice __auth =
      Authservice(); //this create instance of auth service and named it as __auth so that after in the file we can access the sigin meathod using __auth

  final __formkey = GlobalKey<FormState>();

  bool loading = false;

  var val;
  String email = '';
  String password = '';
  String error = '';
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 19, 91, 96),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Form(
                        key: __formkey,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage('assets/images/logo.png'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  filled: true,
                                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.pink)),
                                  prefixIcon: Icon(Icons.email)),
                              validator: (val) =>
                                  val!.isEmpty ? 'Enter email' : null,
                              onChanged: (val) {
                                setState(() => email = val);
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  filled: true,
                                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.pink)),
                                  prefixIcon: Icon(Icons.password)),
                              // validation if the length of password is 6 digit long
                              validator: (val) => val!.length < 6
                                  ? 'Enter a password 6+ chars long'
                                  : null,
                              // setting the value of the password to input password
                              onChanged: (val) {
                                setState(() => password = val);
                              },
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  if (__formkey.currentState!.validate()) {
                                    setState(() {
                                      loading = true;
                                    });
                                    // this check every validate and run each function
                                    dynamic result =
                                        await __auth.signinwithemailandpassword(
                                            email, password);
                                    // error
                                    if (result == null) {
                                      setState(() {
                                        error = 'Give rigth credentials';
                                        loading = false;
                                      });
                                    } else {}
                                  }
                                },
                                child: Text('Sign In')),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              error,
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14.0),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Divider(
                                color: Colors.black,
                                thickness: 2,
                                height: 20,
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  widget.toggleview();
                                },
                                child: Text('Sign Up'))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
    });
  }

  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 249, 243),
            body: Column(
              children: [
                Image(
                  image: AssetImage('assets/images/first.png'),
                ),
              ],
            ),
          );
  }
}
