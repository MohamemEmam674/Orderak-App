import 'package:flutter/material.dart';
import 'package:rms_final_project/Resturant_Class/page1.dart';

class Resturant_HomeScreen extends StatefulWidget {
  const Resturant_HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Resturant_HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("resturant"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
                child: Image.asset(
                  "images/food4.jfif",
                  height: 130,
                  width: 270,
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
