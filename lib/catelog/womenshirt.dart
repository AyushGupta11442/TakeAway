import 'package:flutter/material.dart';
import 'package:TakeAway/data.dart';

class WomenTshirt extends StatefulWidget {
  const WomenTshirt({Key? key}) : super(key: key);

  @override
  State<WomenTshirt> createState() => _WomenTshirtState();
}

class _WomenTshirtState extends State<WomenTshirt> {
  final __formkey = GlobalKey<FormState>();
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: InkWell(
                child: GestureDetector(
                    onHorizontalDragStart: (details) {
                      setState(() {
                        (num >= 5) ? num = 1 : num++;
                      });
                    },
                    onDoubleTap: (() {
                      setState(() {
                        addValueTocartMap(
                            wishlistmap, womenmenshirt, 'object.$num');
                        number.add(num);
                      });
                    }),
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                child: Image(
                                    image: NetworkImage(
                                        womenmenshirt['object.$num']
                                            ['imagelink'])),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          16, 0, 0, 8),
                                      child: Text(
                                          womenmenshirt['object.$num']['name'],
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                  ),
                                  Spacer(),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                        (womenmenshirt['object.$num']['price'])
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        womenmenshirt['object.$num']
                                            ['discription'],
                                        style: TextStyle(
                                          fontSize: 17,
                                        )),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        16, 16, 4, 16),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.shopping_cart,
                                        size: 40,
                                      ),
                                      onTap: () {
                                        setState(() {
                                          addValueTocartMap(cartmap,
                                              womenmenshirt, 'object.$num');
                                        });
                                      },
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                      height: 50,
                                      width: 300,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(210, 253, 86, 86),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text(
                                          "Buy Now",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
