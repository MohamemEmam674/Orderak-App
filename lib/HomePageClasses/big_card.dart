import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Speed_Offers.dart';

class BigCard extends StatelessWidget {
  dynamic RestaurantPage, resturanImage, resturanName, resturanTime,
      resturanDesc, placeRateText, resturanPrice;
  bool specialOrder;

  BigCard(this.resturanImage, this.resturanName, this.resturanTime,
      this.resturanDesc, this.placeRateText, this.resturanPrice,
      this.specialOrder,
      {this.RestaurantPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RestaurantPage),
        );
      },
      child: Column(
          children: [
          SpeedOffers(resturanImage,
          320.0, //Width
          180.0 //Height
      ),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 90, 2),
                  child: Text(
                    resturanName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'images/rocket.png',
                    scale: 25,
                  ),
                ),
                Text(
                  " within ${resturanTime} mins",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 2, 0, 2),
              child: Text(
                resturanDesc,
                style: TextStyle(color: Colors.black54, fontSize: 12),
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 7, 0),
                        child: Image.asset(
                          'images/favorite.png',
                          scale: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                        child: Text(
                          '${placeRateText}  (100+)',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset('images/deliver.png',
                              scale: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            " Deliver ${resturanPrice}",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 2, 0, 2),
              child: Text(
                (specialOrder == true) ? 'Special Order' : '',
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    ]
      ),
    );
  }
}
