import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset(
                    'images/dice$leftDiceNumber.png',
                  ),
                ),
              ),
              // SizedBox(width: 15),
              Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      changeDiceFace();
                      // print('The right button got pressed');
                    },
                    child: Image.asset(
                      'images/dice$rightDiceNumber.png',
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
