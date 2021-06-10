import 'package:flutter/material.dart';
import 'package:rms_final_project/Restaurant__page/Restaurant_Home_Page.dart';
import 'package:rms_final_project/Resturant_Class/page2.dart';
import 'Page3.dart';

class Page1 extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<Page1>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 430,
                  height: 230,
                  child: Image.asset(
                    'images/food4.jfif',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Masr EL-Kheir",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "info",
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "charity",
                          style: TextStyle(color: Colors.black26, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  '4.4',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "(203 Ratings)",
                                  style: TextStyle(color: Colors.black38),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 93,
                            ),
                            Text(
                              "Reviews",
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          margin: EdgeInsets.symmetric(vertical: 3),
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.auto_fix_high,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Within 15 mins",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "(EGE 0.00 delivery)",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          margin: EdgeInsets.symmetric(vertical: 3),
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300],
                          ),
                          child: Text(
                            "Delivered by us, with live tracking",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(top: 10, left: 10,
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => RestaurantPage()));
                  },
                  child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
                )
            ),
            DraggableScrollableSheet(
                maxChildSize: .85,
                builder: (BuildContext, ScrollController scrollController) {
                  return Stack(
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20))),
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          controller: scrollController,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TabBar(controller: _controller, tabs: [
                                  Tab(
                                    child: Text(
                                      'most selling',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      'Masr EL-kheir',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 22),
                                    ),
                                  )
                                ]),
                                Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.blue,
                                  child: new TabBarView(
                                    controller: _controller,
                                    children: <Widget>[
                                      Page2(),
                                      Page3(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
