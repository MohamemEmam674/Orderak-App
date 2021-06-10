import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppParTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20,0,25,0),
            child: Image.asset(
              'images/text.png',
              fit: BoxFit.cover,
              scale:10,
            ),
          )),
    );
  }
}
