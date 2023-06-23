import 'package:flutter/material.dart';

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
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <MyImage>[
              MyImage('lib/assets/images/dice1.png'),
              MyImage('lib/assets/images/dice2.png'),
              MyImage('lib/assets/images/dice3.png'),
              MyImage('lib/assets/images/dice4.png'),
              MyImage('lib/assets/images/dice5.png'),
              MyImage('lib/assets/images/dice6.png'),
            ],
          ),
        ),
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  final String imgPath;

  const MyImage(this.imgPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(imgPath),
      width: 100,
      height: 100,
    );
  }
}
