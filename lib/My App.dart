import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rms_final_project/HomePageClasses/Speed_Offers.dart';
import 'Drawer/Drawer.dart';
import 'HomePageClasses/AppParTitel.dart';
import 'HomePageClasses/HotOffers.dart';
import 'HomePageClasses/Popular_Prands.dart';
import 'HomePageClasses/big_card.dart';
import 'HomePageClasses/search.dart';
import 'Restaurant__page/Restaurant_Home_Page.dart';
import 'Resturant_Class/page1.dart';
import 'Splash_Screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      checkerboardOffscreenLayers: false,
      home: SplashScreen(),
        );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   TabController _tabController;

  int _seconds = 00;
  int _minutes = 25;
  Timer _timer;
  var f = NumberFormat("00");

  void _stopTimer() {
    if (_timer != null) {
      _timer.cancel();
      _seconds = 0;
      _minutes = 25;
    }
  }

  void _startTimer() {
    if (_timer != null) {
      _stopTimer();
    }
    if (_minutes > 0) {
      _seconds = _minutes * 60;
    }
    if (_seconds > 60) {
      _minutes = (_seconds / 60).floor();
      _seconds -= (_minutes * 60);
    }
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds > 0) {
          _seconds--;
        } else {
          if (_minutes > 0) {
            _seconds = 59;
            _minutes--;
          } else {
            _timer.cancel();
            print("Time Out");
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          return Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Food', style: TextStyle(
                                fontSize: 20
                                , color: Colors.deepOrange
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('images/salad.png', scale: 25,),
                          )
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      alignment: Alignment.center,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Drinks', style: TextStyle(
                                fontSize: 20
                                , color: Colors.deepOrange
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('images/tea.png', scale: 25,),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              iconTheme: IconThemeData(color: Colors.black54),
              backgroundColor: Colors.white,
              title: AppParTitle(),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SeachAppBarRecipe()),
                        );
                      },
                      child: Icon(Icons.search)),
                )
              ],
            ),
            drawer: Padding(
              padding: const EdgeInsets.all(0.0),
              child: NavBar(),
            ),
            body: TabBarView(
              children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Text(
                                'Nearest to you',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'images/place.png',
                                scale: 25,
                              ),
                            )
                          ],
                        )),
                    Container(
                      //nearest you
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              BigCard(
                                  'images/foods/nearest_burger.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/nearest_maxicano.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  false,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/nearest_burger.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  false,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/nearest_maxicano.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/nearest_burger.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 75, 10),
                          child: Text(
                            'Save up to 100 EGP',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'images/diamond.png',
                            scale: 20,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _startTimer();
                          },
                          child: Text(
                            "${f.format(_minutes)} : ${f.format(_seconds)}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      //Save up to
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  HotOffers('images/logo.jpg', 'Aish Bi Lahma',
                                      'National Resturant', '3.5', '35 min'),
                                  HotOffers(
                                      'images/hotlogo.jpg', 'Aish Bi Lahma',
                                      'National Resturant', '3.5', '35 min'),
                                ],
                              ),
                              Column(
                                children: [
                                  HotOffers(
                                      'images/deliver.png', 'Aish Bi Lahma',
                                      'National Resturant', '3.5', '35 min'),
                                  HotOffers(
                                      'images/favorite.png', 'Aish Bi Lahma',
                                      'National Resturant', '3.5', '35 min'),
                                ],
                              ),
                              Column(
                                children: [
                                  HotOffers(
                                      'images/fast-food.png', 'Aish Bi Lahma',
                                      'National Resturant', '3.5', '35 min'),
                                  HotOffers(
                                      'images/fast-food.png', 'Aish Bi Lahma',
                                      'National Resturant', '3.5', '35 min'),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    CarouselSlider(
                      //Speed Offers
                      options: CarouselOptions(
                        height: 180.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                      items: [
                        SpeedOffers(
                            'images/foods/speed_offer_burger.jpg',
                            400.0 //width
                            ,
                            150.0 //Height
                        ),
                        SpeedOffers(
                            'images/foods/speed_offer_potato.jpg',
                            400.0 //width
                            ,
                            150.0 //Height
                        ),
                        SpeedOffers(
                            'images/foods/speed_offer_indian.jpg',
                            400.0 //width
                            ,
                            150.0 //Height
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Popular brands near you',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Container(
                      //Popular brands near you
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              PopularPrands(
                                  'images/hotlogo.jpg', 'Good Food', '45 min'),
                              PopularPrands(
                                  'images/logo.jpg', 'Good Food', '45 min'),
                              PopularPrands(
                                  'images/hotlogo.jpg', 'Good Food', '45 min'),
                              PopularPrands(
                                  'images/logo.jpg', 'Good Food', '45 min'),
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
                                'Free Delivery',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'images/hot.png',
                                scale: 25,
                              ),
                            )
                          ],
                        )),
                    Container(
                      //Free Delivery
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              BigCard(
                                  'images/foods/free_delivery_sandwich.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/free_delivery_chicken.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  false,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/free_delivery_sandwich.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  false,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/free_delivery_chicken.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/free_delivery_sandwich.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
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
                                'Up to 50% OFF',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'images/sales.png',
                                scale: 25,
                              ),
                            )
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
                              BigCard(
                                  'images/foods/upto50_burger.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/upto50_ckicken.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/upto50_burger.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/upto50_ckicken.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/upto50_burger.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
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
                                'Newly joined',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Image.asset('',scale: 25,),
                            // )
                          ],
                        )),
                    Container(
                      //newly join
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              BigCard(
                                  'images/foods/newly_pizza.jpg',
                                  'Pizza Hut',
                                  '45',
                                  'Italian Pizza , East Pizza , Mo3aganat',
                                  '4.3',
                                  '600 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/newly_pasta.jpg',
                                  'Pastawiesy',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  false,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/newly_pizza.jpg',
                                  'Pizza Man',
                                  '45',
                                  'Italian Pizza , East Pizza , Mo3aganat',
                                  '4.3',
                                  '600 EGP',
                                  false,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/newly_pasta.jpg',
                                  'Mockup',
                                  '30',
                                  'MEXICAN FOOD',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/foods/newly_pizza.jpg',
                                  'Pizza King ',
                                  '45',
                                  'Italian Pizza , East Pizza , Mo3aganat',
                                  '4.3',
                                  '600 EGP',
                                  true,RestaurantPage: Page1()),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push (
                            context ,
                            MaterialPageRoute(builder: (context)=> RestaurantPage()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(0.0),
                          height: 50.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            'View All restaurants',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ), //foods
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Text(
                                'Nearest to you',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'images/place.png',
                                scale: 25,
                              ),
                            )
                          ],
                        )),
                    Container(
                      //nearest you
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              BigCard(
                                  'images/drinks/nearest_cofee.jpg',
                                  'Costa',
                                  '30',
                                  'Coffee Shop',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/nearest_cola.jpg',
                                  'Drinks',
                                  '30',
                                  'Drinks Shop',
                                  '4',
                                  '1000 EGP',
                                  false,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/nearest_cofee.jpg',
                                  'Costa',
                                  '30',
                                  'Coffee Shop',
                                  '4',
                                  '1000 EGP',
                                  false,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/nearest_cola.jpg',
                                  'Drinks',
                                  '30',
                                  'Drinks Shop',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/nearest_cofee.jpg',
                                  'Costa',
                                  '30',
                                  'Coffee Shop',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 75, 10),
                          child: Text(
                            'Save up to 100 EGP',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'images/diamond.png',
                            scale: 20,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _startTimer();
                          },
                          child: Text(
                            "${f.format(_minutes)} : ${f.format(_seconds)}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      //Save up to
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  HotOffers('images/drinks/coffee-shop.jpg', 'Costa',
                                      'National Cafe ', '3.5', '35 min'),
                                  HotOffers(
                                      'images/drinks/coffee-shop2.jpg', 'Cilantro',
                                      'National Cafe', '3.5', '35 min'),
                                ],
                              ),
                              Column(
                                children: [
                                  HotOffers(
                                      'images/drinks/coffee-shop3.jpg', 'Alix',
                                      'Coffee Shop', '3.5', '35 min'),
                                  HotOffers(
                                      'images/drinks/coffee-shop.jpg', 'ROX',
                                      'cafe', '3.5', '35 min'),
                                ],
                              ),
                              Column(
                                children: [
                                  HotOffers('images/drinks/coffee-shop.jpg', 'Costa',
                                      'National Cafe ', '3.5', '35 min'),
                                  HotOffers(
                                      'images/drinks/coffee-shop2.jpg', 'Cilantro',
                                      'National Cafe', '3.5', '35 min'),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    CarouselSlider(
                      //Speed Offers
                      options: CarouselOptions(
                        height: 180.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                      items: [
                        SpeedOffers(
                            'images/drinks/speed_offer_farbeh.jpg',
                            400.0 //width
                            ,
                            150.0 //Height
                        ),
                        SpeedOffers(
                            'images/drinks/speed_offer_juices.jpg',
                            400.0 //width
                            ,
                            150.0 //Height
                        ),
                        SpeedOffers(
                            'images/drinks/speed_offer_khamra.jpg',
                            400.0 //width
                            ,
                            150.0 //Height
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Popular brands near you',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Container(
                      //Popular brands near you
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              PopularPrands(
                                  'images/drinks/coffee-shop5.jpg', 'Good Coffee', '45 min'),
                              PopularPrands(
                                  'images/drinks/coffee-shop4.jpg', 'English Coffee', '30 min'),
                              PopularPrands(
                                  'images/drinks/coffee-shop3.jpg', 'Special Coffee', '35 min'),
                              PopularPrands(
                                  'images/drinks/coffee-shop2.jpg', 'Good Coffee', '20 min'),
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
                                'Free Delivery',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'images/hot.png',
                                scale: 25,
                              ),
                            )
                          ],
                        )),
                    Container(
                      //Free Delivery
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              BigCard(
                                  'images/drinks/free_delivery_strobery.jpg',
                                  'Alex',
                                  '30',
                                  'Coffee Shop & restaurant ',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/free_delivery_tea.jpg',
                                  'Cilantro',
                                  '30',
                                  'Coffee Shop',
                                  '4',
                                  '1000 EGP',
                                  false,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/free_delivery_strobery.jpg',
                                  'Alex',
                                  '30',
                                  'Coffee Shop & restaurant ',
                                  '4',
                                  '1000 EGP',
                                  false,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/free_delivery_tea.jpg',
                                  'Cilantro',
                                  '30',
                                  'Coffee Shop',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/free_delivery_strobery.jpg',
                                  'Alex',
                                  '30',
                                  'Coffee Shop & restaurant ',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
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
                                'Up to 50% OFF',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'images/sales.png',
                                scale: 25,
                              ),
                            )
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
                              BigCard(
                                  'images/drinks/upto50_chocolate.jpg',
                                  'StareBucks',
                                  '30',
                                  'Coffee Shop',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/upto50_juice.jpg',
                                  'Dahap',
                                  '30',
                                  'juice Shop',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/upto50_chocolate.jpg',
                                  'StareBucks',
                                  '30',
                                  'Coffee Shop',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/upto50_juice.jpg',
                                  'Dahap',
                                  '30',
                                  'juice Shop',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/upto50_chocolate.jpg',
                                  'StareBucks',
                                  '30',
                                  'Coffee Shop',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
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
                                'Newly joined',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Image.asset('',scale: 25,),
                            // )
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
                              BigCard(
                                  'images/drinks/newly_juice.jpg',
                                  'Cola&Soda',
                                  '45',
                                  'we have All Drinks',
                                  '4.3',
                                  '600 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/newly_seader.jpg',
                                  'T.B.S',
                                  '30',
                                  'Bakary & Coffee',
                                  '4',
                                  '1000 EGP',
                                  false,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/newly_juice.jpg',
                                  'Cola&Soda',
                                  '45',
                                  'we have All Drinks',
                                  '4.3',
                                  '600 EGP',
                                  false,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/newly_seader.jpg',
                                  'T.B.S',
                                  '30',
                                  'Bakary & Coffee',
                                  '4',
                                  '1000 EGP',
                                  true,RestaurantPage: Page1()),
                              BigCard(
                                  'images/drinks/newly_juice.jpg',
                                  'Cola&Soda',
                                  '45',
                                  'we have All Drinks',
                                  '4.3',
                                  '600 EGP',
                                  true,RestaurantPage: Page1()),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(0.0),
                          height: 50.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            'View All cafés',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ), //drinks
              ],
            ),
          );
        })
    );
  }
}
