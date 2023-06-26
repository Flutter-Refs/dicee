// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:core';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dicee',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 180, 0, 0),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  int get getRandomIndex => Random().nextInt(6) + 1;

  void rollDices() {
    leftDiceNumber = getRandomIndex;
    rightDiceNumber = getRandomIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      // app bar
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      // body
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () => setState(
                  () => rollDices(),
                ),
                child: Image.asset('lib/assets/images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => setState(
                  () => rollDices(),
                ),
                child:
                    Image.asset('lib/assets/images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
