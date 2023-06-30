import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int blackcard = 0;
  int redcard = 0;
  int getRandomValue() {
    Random random = new Random();
    int value = random.nextInt(13);
    return value + 1;
  }

  void cardflip() {
    onPressed() {}
  }

  String winner() {
    if (blackcard > redcard) {
      return "Black win";
    } else if (redcard > blackcard) {
      return "Red win";
    } else {
      return "Draw";
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Image.asset("photo/black$blackcard.png"),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Image.asset("photo/red$redcard.png"),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              child: Text(
                winner(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shadowColor: Colors.black,
                    minimumSize: Size(200, 50)),
                child: Text(
                  "Restart",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                onPressed: () {
                  setState(() {
                    blackcard = getRandomValue();
                    redcard = getRandomValue();
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
