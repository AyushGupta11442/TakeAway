import 'package:TakeAway/data.dart';
import 'package:flutter/material.dart';

import '../../widgetdirectory/Salesbanner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        backgroundColor: greencolor,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search),
                      labelText: "SEARCH",
                      border: OutlineInputBorder()),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 30,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: () {
                          Navigator.pushNamed(context, '/mencloathing');
                        },
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(
                                  'assets/images/icons8-user-male-100.png'),
                              height: 30,
                              width: 30,
                            ),
                            Text('Men'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      width: 20,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: () {
                          Navigator.pushNamed(context, '/womencloathing');
                        },
                        child: Column(
                          children: [
                            Expanded(
                              child: Image(
                                image: AssetImage(
                                    'assets/images/icons8-attach-resume-female-100.png'),
                                height: 25,
                              ),
                            ),
                            Text('Women'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      width: 20,
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: () {
                          Navigator.pushNamed(context, '/childcloathing');
                        },
                        child: Column(
                          children: [
                            Expanded(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/icons8-children-100.png',
                                ),
                                height: 25,
                              ),
                            ),
                            Text('Children')
                          ],
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
    ));
  }
}
