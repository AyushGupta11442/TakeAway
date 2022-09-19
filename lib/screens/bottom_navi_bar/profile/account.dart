import 'package:TakeAway/data.dart';
import 'package:TakeAway/firebase/authantication.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../modal/user.dart';

final FirebaseAuth __auth = FirebaseAuth.instance;

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("accountdata")
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  final __formkey = GlobalKey<FormState>();
  String value = '';
  String? uid = Authservice().currentuid();
  @override
  void updatedata(Map<String, Object> newvalue) {
    FirebaseFirestore.instance
        .collection('accountdata')
        .doc(uid)
        .update(newvalue)
        .catchError((e) {
      print(e);
    });
  }

  Widget build(BuildContext context) {
    Future<String?> id = getCurrentUID();
    void showbottomscreen(BuildContext context, String tittle, String string1) {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.all(16),
              child: Form(
                  key: __formkey,
                  child: Column(
                    children: [
                      Text(
                        tittle,
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: TextFormField(
                          validator: (val) =>
                              val!.isEmpty ? 'please enter a name' : null,
                          onChanged: (val) => setState(() {
                            value = val;
                          }),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            updatedata({string1: value});
                          },
                          child: Text('update'))
                    ],
                  )),
            );
          });
    }

    ;

    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          decoration: BoxDecoration(
            color: redcolor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Account',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      color: Colors.white,
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${loggedInUser.name}",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  onTap: () => showbottomscreen(context, 'Enter name', 'name')),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${loggedInUser.email}",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${loggedInUser.mobileno}",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'password',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    color: Colors.white,
                    height: 50,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${loggedInUser.address}",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

Future<String?> getCurrentUID() async {
  var currentUid = await __auth.currentUser?.uid;
  print(currentUid);
  return currentUid;
}
