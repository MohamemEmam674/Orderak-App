import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'My App.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Stack(
          children: [
            SpinKitDoubleBounce(
              color: Colors.grey[200],
              size: 200.0,
            ),
            Center(
              child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: Image.asset(
                      'images/launch_image.png',
                      fit: BoxFit.cover,
                      scale: 1,
                    ),
                  )),
            ),
          ],
        )),
    );
  }
}
