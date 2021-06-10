import 'package:flutter/material.dart';

class Food5 extends StatefulWidget {
  const Food5({Key key}) : super(key: key);

  @override
  _Food1State createState() => _Food1State();
}

class _Food1State extends State<Food5> {
  int value = 1;
  int val = 400;
  int x = 400;

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
                  "assets/images/food5.jfif",
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
              Row(
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
                          val += 400;
                          x += 400;
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
                          value--;
                          val -= 400;
                          x -= 400;
                        });
                      }),
                  SizedBox(
                    width: 110,
                  ),
                  Text(
                    " EGP ${val}.0",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
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
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.comment),
                  hintText: "Any thing else we need to know",
                  hintStyle: TextStyle(color: Colors.black26),
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
                          "  ${x}.0",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
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
