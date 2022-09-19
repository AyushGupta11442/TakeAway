import 'package:TakeAway/data.dart';
import 'package:TakeAway/firebase/authantication.dart';
import 'package:TakeAway/widgetdirectory/collectioncontainer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final Authservice __auth = Authservice();
  @override
  User? user = FirebaseAuth.instance.currentUser;

  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: backgroundcolor,
      body: Column(
        children: [
          // ProfileData(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              color: greencolor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Text(
                      'Profile',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    InkWell(
                      child: Icon(Icons.logout),
                      onTap: () async {
                        await __auth.signout();
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: Container(
              color: Colors.white,
              height: 50,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Account',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/Account');
            },
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: Container(
                color: Colors.white,
                height: 50,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Raise A Querry',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
