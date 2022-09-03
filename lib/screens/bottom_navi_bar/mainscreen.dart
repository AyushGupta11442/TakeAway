import 'package:TakeAway/widgetdirectory/Salesbanner.dart';
import 'package:TakeAway/widgetdirectory/bottomnavigationbar.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final storageRef = FirebaseStorage.instance.ref();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 243),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 50, 15, 15),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "SEARCH", border: OutlineInputBorder()),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 50,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: () {
                          Navigator.pushNamed(context, '/mencloathing');
                        },
                        child: Image(
                            image: AssetImage(
                                'assets/images/icons8-user-male-100.png')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 50,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: () {
                          Navigator.pushNamed(context, '/womencloathing');
                        },
                        child: Image(
                            image: AssetImage(
                                'assets/images/icons8-attach-resume-female-100.png')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 70,
                      width: 50,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: () {
                          Navigator.pushNamed(context, '/childcloathing');
                        },
                        child: Image(
                          image: AssetImage(
                            'assets/images/icons8-children-100.png',
                          ),
                          height: 60,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              sales(context),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: BNavigator(context)),
    ));
  }
}
