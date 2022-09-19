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
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Color.fromARGB(255, 255, 249, 243),
            body: Form(
              key: __formkey,
              child: Column(
                children: [
                  Image(image: AssetImage('assets/images/logo.png')),
                  Text(
                    "login in to TakeAway",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Didn\'t have an account?'),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        widget.toggleview();
                      },
                      child: Text('Sign Up')),
                  Divider(
                    height: 20,
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Email',
                        filled: true,
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink)),
                      ),
                      validator: (val) => val!.isEmpty ? 'Enter email' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        hintText: 'Password',
                        filled: true,
                        fillColor: Color.fromRGBO(255, 255, 255, 1),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink)),
                      ),
                      validator: (val) => val!.length < 6
                          ? 'Enter a password 6+ chars long'
                          : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                    ),
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
                          dynamic result = await __auth
                              .signinwithemailandpassword(email, password);

                          if (result == null) {
                            setState(() {
                              error = 'Give rigth credentials';
                              loading = false;
                            });
                          } else {}
                        }
                      },
                      child: Text('Login')),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
  }
}
