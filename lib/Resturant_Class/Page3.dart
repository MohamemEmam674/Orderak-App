import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'food2/Fodd7.dart';
import 'food2/Food10.dart';
import 'food2/Food6.dart';
import 'food2/Food8.dart';
import 'food2/Food9.dart';
class Page3 extends StatefulWidget {
  const Page3({Key key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page3> {
  Widget defaultButton({
    @required Function function,
    Color background = Colors.grey,
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
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  defaultButton(
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Food6();
                        }));
                      },
                      text: "Donate El-kheir",
                      image: "images/w1.jpg",
                      text1: "El-kheir box valued at ege 150",
                      text2: "El-kheir box valued at ege 150",
                      text3: "El-kheir box valued at ege 150"),
                  SizedBox(
                    height: 3,
                  ),
                  defaultButton(
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Food7();
                        }));
                      },
                      text: "Donate El-kheir",
                      image: "images/w2.jpg",
                      text1: "El-kheir box valued at ege 150",
                      text2: "El-kheir box valued at ege 150",
                      text3: "El-kheir box valued at ege 150"),
                  SizedBox(
                    height: 3,
                  ),
                  defaultButton(
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Food8();
                        }));
                      },
                      text: "Donate El-kheir",
                      image: "images/w3.jpg",
                      text1: "El-kheir box valued at ege 150",
                      text2: "El-kheir box valued at ege 150",
                      text3: "El-kheir box valued at ege 150"),
                  SizedBox(
                    height: 3,
                  ),
                  defaultButton(
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Food9();
                        }));
                      },
                      text: "Donate El-kheir",
                      image: "images/w4.jpg",
                      text1: "El-kheir box valued at ege 150",
                      text2: "El-kheir box valued at ege 150",
                      text3: "El-kheir box valued at ege 150"),
                  SizedBox(
                    height: 3,
                  ),
                  defaultButton(
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Food10();
                        }));
                      },
                      text: "Donate El-kheir",
                      image: "images/w5.jpg",
                      text1: "El-kheir box valued at ege 150",
                      text2: "El-kheir box valued at ege 150",
                      text3: "El-kheir box valued at ege 150"),
                  SizedBox(
                    height: 6,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
