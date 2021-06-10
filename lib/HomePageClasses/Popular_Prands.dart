import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularPrands extends StatelessWidget {
  var prandImage, prandName = '', prandTime = '';

  PopularPrands(this.prandImage, this.prandName, this.prandTime);

  @override
  Widget build(BuildContext context) {
    return  Card(
          margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
          child: Container(
            alignment: Alignment.center,
            height: 120,
            width: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 90,
                  child: Image.asset(
                    prandImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  prandName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
                Text(
                  prandTime,
                  style: TextStyle(color: Colors.black54, fontSize: 13),
                ),
              ],
            ),
          ),
        );
  }
}
