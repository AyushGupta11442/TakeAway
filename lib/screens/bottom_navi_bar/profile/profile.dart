import 'package:TakeAway/firebase/authantication.dart';
import 'package:TakeAway/screens/bottom_navi_bar/profile/profilethings.dart';
import 'package:TakeAway/widgetdirectory/bottomnavigationbar.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final Authservice __auth = Authservice();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 243),
      body: Column(
        children: [
          // ProfileData(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 19, 91, 96),
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
                  style: TextStyle(fontSize: 25),
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
                    style: TextStyle(fontSize: 25),
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: BNavigator(context)),
    ));
  }
}
