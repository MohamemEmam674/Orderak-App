import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../page1.dart';
import '../scanQR.dart';

class Food1 extends StatefulWidget {
  const Food1({Key key}) : super(key: key);

  @override
  _Food1State createState() => _Food1State();
}

class _Food1State extends State<Food1> {
  int value = 1;
  int val = 1000;
  int x = 1000;

  outOrder() {
    return CupertinoAlertDialog(
      title: Text('Open GPS', style: TextStyle(fontSize: 25)),
      actions: [
        CupertinoDialogAction(
          onPressed: () {

            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Page1()));
            Fluttertoast.showToast(
                backgroundColor: Colors.deepOrange,
                msg: "your order is Completed",
                textColor: Colors.white,
                fontSize: 30,
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.TOP,
                timeInSecForIosWeb: 2);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Image.network(
                  'https://image.flaticon.com/icons/png/512/463/463926.png',
                  scale: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text('Allow', style: TextStyle(fontSize: 30)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  dialogFunc(x) {
    return CupertinoAlertDialog(
      title: Text(x, style: TextStyle(fontSize: 25)),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) => outOrder() ,
                  barrierDismissible: false);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Image.network(
                  'https://image.flaticon.com/icons/png/512/463/463926.png',
                  scale: 17,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text(
                  'Outside',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
        CupertinoDialogAction(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ScanQR()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: Image.network(
                  'https://image.flaticon.com/icons/png/512/651/651484.png',
                  scale: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text('Restaurant', style: TextStyle(fontSize: 30)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "images/food1.jfif",
                  height: 100,
                  width: 190,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Donate Family Support Bundle",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "the family support bandle, valued at EGE 1000",
                      style: TextStyle(color: Colors.black26, fontSize: 14),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "will support the family with more than 70 kg for food",
                      style: TextStyle(color: Colors.black26, fontSize: 14),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "include, 5 food Boxes, 10 meat cans 10 kg of",
                      style: TextStyle(color: Colors.black26, fontSize: 14),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "potates, 1 kg of apples, 2 litre of guice and 200 egp cash",
                      style: TextStyle(color: Colors.black26, fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    FloatingActionButton(
                        heroTag: "next2",
                        child: Icon(
                          Icons.add,
                        ),
                        mini: true,
                        onPressed: () {
                          setState(() {
                            value++;
                            val += 1000;
                            x += 1000;
                          });
                        }),
                    SizedBox(
                      width: 4,
                    ),
                    Text('$value'),
                    SizedBox(
                      width: 4,
                    ),
                    FloatingActionButton(
                        heroTag: "next",
                        child: Icon(Icons.remove),
                        mini: true,
                        onPressed: () {
                          setState(() {
                            (value > 0) ? value-- : value = 0;
                            (val > 0) ? val -= 1000 : val = 0;
                            (x > 0) ? x -= 1000 : x = 0;
                          });
                        }),
                    SizedBox(
                      width: 110,
                    ),
                    Text(
                      " EGP ${val}.00",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Add A note ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "optional ",
                      style: TextStyle(color: Colors.black26),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.comment),
                    hintText: "Any thing else we need to know",
                    hintStyle: TextStyle(color: Colors.black26),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.orange,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "  ${x}.00",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => dialogFunc('Are you in ...'),
                                barrierDismissible: false);
                          },
                          child: Text(
                            "add to basket",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
