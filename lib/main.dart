import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EightBall(),
    );
  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int picNum = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text("Ask Me Anything"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Image.asset("images/ball$picNum.png"),
              onTap: () {
                setState(() {
                  var randNum = Random().nextInt(4) + 1;
                  if (picNum != randNum)
                    picNum = randNum;
                  else
                    picNum = Random().nextInt(4) + 1;
                });
              },
            ),
          ],
        ));
  }
}
