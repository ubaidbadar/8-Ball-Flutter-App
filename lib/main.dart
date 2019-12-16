import 'dart:math';

import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask me any question')),
        ),
        body: eight_ball(),
      ),
    );
  }
}

class eight_ball extends StatefulWidget {
  @override
  _eight_ballState createState() => _eight_ballState();
}

class _eight_ballState extends State<eight_ball> {
  int ballNumber = 1;
  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: () => changeBallNumber(),
            ),
          ),
        ],
      ),
    );
  }
}
