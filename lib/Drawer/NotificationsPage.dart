
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Notifications"),
      centerTitle: true,
      backgroundColor: Colors.white,

    ),
    body: Column(
      children: [
      Container(
      height: 300.0,
      width: 300.0,
      color: Colors.orange,
      child: Text( "menu"),
    ),
    Text( 'How to use the voucher wallet?' ),
    Text("1. Check the offer"),
    Text( "2. Choose the restaurant" ),
    Text("3. Add to the cart" ),
      ]
  )
  );
}