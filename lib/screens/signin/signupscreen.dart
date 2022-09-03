import 'package:TakeAway/firebase/authantication.dart';
import 'package:TakeAway/widgetdirectory/loading.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  final Function toggleview;
  Signup({super.key, required this.toggleview});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final Authservice __auth = Authservice();

  //this create instance of auth service and named it as __auth so that after in the file we can access the sigin meathod using __auth
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
                  Image(image: AssetImage('assets/images/first.png')),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 521,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 19, 91, 96),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
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
                                    borderSide: BorderSide(color: Colors.pink)),
                              ),
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
                              decoration: InputDecoration(
                                hintText: 'Password',
                                filled: true,
                                fillColor: Color.fromRGBO(255, 255, 255, 1),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.pink)),
                              ),
                              obscureText: true,
                              validator: (val) => val!.length < 6
                                  ? 'Enter a password 6+ chars long'
                                  : null,
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
                                    // this check every validate and run each function
                                    setState(() {
                                      loading = true;
                                    });
                                    dynamic result = await __auth
                                        .registerwithemailandpassword(
                                            email, password);

                                    if (result == null) {
                                      setState(() {
                                        error = 'Please supply a valid email';
                                        loading = false;
                                      });
                                    } else {
                                      loading = false;
                                    }
                                  }
                                },
                                child: Text('Sign Up')),
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
                            ElevatedButton(
                                onPressed: () async {
                                  widget.toggleview();
                                },
                                child: Text('Sign In')),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
