import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rms_final_project/HomePageClasses/HotOffers.dart';
import 'package:rms_final_project/HomePageClasses/big_card.dart';
import 'package:rms_final_project/Resturant_Class/page1.dart';

class RestaurantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Text(
                          'Free Delivery',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        BigCard('images/foods/nearest_burger.jpg', 'Mockup', '30',
                            'MEXICAN FOOD', '4', '1000 EGP', true,RestaurantPage: Page1()),
                        BigCard('images/foods/nearest_maxicano.jpg', 'Mockup',
                            '30', 'MEXICAN FOOD', '4', '1000 EGP', false,RestaurantPage: Page1()),
                        BigCard('images/foods/nearest_burger.jpg', 'Mockup', '30',
                            'MEXICAN FOOD', '4', '1000 EGP', false,RestaurantPage: Page1()),
                        BigCard('images/foods/nearest_maxicano.jpg', 'Mockup',
                            '30', 'MEXICAN FOOD', '4', '1000 EGP', true,RestaurantPage: Page1()),
                        BigCard('images/foods/nearest_burger.jpg', 'Mockup', '30',
                            'MEXICAN FOOD', '4', '1000 EGP', true,RestaurantPage: Page1()),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Text(
                          'All restaurants',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  )),
              HotOffers('images/logo.jpg', 'Aish Bi Lahma', 'National Resturant',
                  '3.5', '35 min'),
              HotOffers('images/hotlogo.jpg', 'Aish Bi Lahma',
                  'National Resturant', '3.5', '35 min'),
              HotOffers('images/logo.jpg', 'Aish Bi Lahma', 'National Resturant',
                  '3.5', '35 min'),
              HotOffers('images/hotlogo.jpg', 'Aish Bi Lahma',
                  'National Resturant', '3.5', '35 min'),
              HotOffers('images/logo.jpg', 'Aish Bi Lahma', 'National Resturant',
                  '3.5', '35 min'),
              HotOffers('images/hotlogo.jpg', 'Aish Bi Lahma',
                  'National Resturant', '3.5', '35 min'),
              HotOffers('images/logo.jpg', 'Aish Bi Lahma', 'National Resturant',
                  '3.5', '35 min'),
              HotOffers('images/hotlogo.jpg', 'Aish Bi Lahma',
                  'National Resturant', '3.5', '35 min'),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Text(
                          'New Offers',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ],
                  )),
              Container(
                //Up to 50% OFF
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        BigCard('images/foods/upto50_burger.jpg', 'Mockup', '30',
                            'MEXICAN FOOD', '4', '1000 EGP', true,RestaurantPage: Page1()),
                        BigCard('images/foods/upto50_ckicken.jpg', 'Mockup', '30',
                            'MEXICAN FOOD', '4', '1000 EGP', true,RestaurantPage: Page1()),
                        BigCard('images/foods/upto50_burger.jpg', 'Mockup', '30',
                            'MEXICAN FOOD', '4', '1000 EGP', true,RestaurantPage: Page1()),
                        BigCard('images/foods/upto50_ckicken.jpg', 'Mockup', '30',
                            'MEXICAN FOOD', '4', '1000 EGP', true,RestaurantPage: Page1()),
                        BigCard('images/foods/upto50_burger.jpg', 'Mockup', '30',
                            'MEXICAN FOOD', '4', '1000 EGP', true,RestaurantPage: Page1()),
                      ],
                    )
                  ],
                ),
              ),
              HotOffers('images/logo.jpg', 'Aish Bi Lahma', 'National Resturant',
                  '3.5', '35 min'),
              HotOffers('images/hotlogo.jpg', 'Aish Bi Lahma',
                  'National Resturant', '3.5', '35 min'),
              HotOffers('images/logo.jpg', 'Aish Bi Lahma', 'National Resturant',
                  '3.5', '35 min'),
              HotOffers('images/hotlogo.jpg', 'Aish Bi Lahma',
                  'National Resturant', '3.5', '35 min'),
              HotOffers('images/logo.jpg', 'Aish Bi Lahma', 'National Resturant',
                  '3.5', '35 min'),
              HotOffers('images/hotlogo.jpg', 'Aish Bi Lahma',
                  'National Resturant', '3.5', '35 min'),
              HotOffers('images/logo.jpg', 'Aish Bi Lahma', 'National Resturant',
                  '3.5', '35 min'),
              HotOffers('images/hotlogo.jpg', 'Aish Bi Lahma',
                  'National Resturant', '3.5', '35 min'),
            ],
          ),
        ),
      ),
    );
  }
}
