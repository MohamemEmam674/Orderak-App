import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpeedOffers extends StatelessWidget {
  var offerImage ,
      bigText,
      smallText,
  x,y
  ;

  SpeedOffers(this.offerImage,this.x,this.y,{ this.bigText, this.smallText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(offerImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width:x ,
        height:y ,
      )
    );
  }
}
