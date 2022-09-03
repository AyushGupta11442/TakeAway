import 'package:TakeAway/firebase/authantication.dart';
import 'package:TakeAway/widgetdirectory/bottomnavigationbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:TakeAway/firebase/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final __formkey = GlobalKey<FormState>();
  final Authservice __auth = Authservice();
  String value = '';
  String? uid = Authservice().currentuid();
  @override
  Widget build(BuildContext context) {
    void showbottomscreen(BuildContext context, String tittle) {
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
                      ElevatedButton(onPressed: () {}, child: Text('update'))
                    ],
                  )),
            );
          });
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 243),
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          decoration: BoxDecoration(
            color: Color.fromARGB(210, 253, 86, 86),
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
                          'Name',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  onTap: () => showbottomscreen(context, 'Enter name')),
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
                        'Email',
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
                        'Mobile no.',
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
                        'address',
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
