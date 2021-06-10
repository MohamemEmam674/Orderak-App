import 'package:flutter/material.dart';

import 'food1/food1.dart';
import 'food1/food2.dart';
import 'food1/food3.dart';
import 'food1/food4.dart';
import 'food1/food5.dart';

class Page2 extends StatefulWidget {
  const Page2({Key key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  Widget defaultButton1({
    @required Function function,
    Color background = Colors.white,
    @required String text,
    @required String image,
    @required String text1,
    @required String text2,
    @required String text3,
  }) =>
      GestureDetector(
        onTap: function,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(3,0,3,0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 400,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 0,
                              child: Text(
                                text,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  text1,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black54),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 7, 0),
                              child: Text(
                                text2,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0)),
                        child: Image.asset(
                          image,
                          scale: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          defaultButton1(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Food1();
                }));
              },
              text: "Donate El-kheir",
              image: "images/food1.jfif",
              text1: "El-kheir box valued at ege 150",
              text2: "El-kheir box valued at ege 150",
              text3: "El-kheir box valued at ege 150"),
          defaultButton1(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Food2();
                }));
              },
              text: "Donate El-kheir",
              image: "images/food2.jpg",
              text1: "El-kheir box valued at ege 150",
              text2: "El-kheir box valued at ege 150",
              text3: "El-kheir box valued at ege 150"),
          SizedBox(
            height: 3,
          ),
          defaultButton1(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Food3();
                }));
              },
              text: "Donate El-kheir",
              image: "images/food3.jfif",
              text1: "El-kheir box valued at ege 150",
              text2: "El-kheir box valued at ege 150",
              text3: "El-kheir box valued at ege 150"),

          defaultButton1(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Food4();
                }));
              },
              text: "Donate El-kheir",
              image: "images/food4.jfif",
              text1: "El-kheir box valued at ege 150",
              text2: "El-kheir box valued at ege 150",
              text3: "El-kheir box valued at ege 150"),

          defaultButton1(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Food5();
                }));
              },
              text: "Donate El-kheir",
              image: "images/food5.jfif",
              text1: "El-kheir box valued at ege 150",
              text2: "El-kheir box valued at ege 150",
              text3: "El-kheir box valued at ege 150"),
        ],
      ),
    );
  }
}
