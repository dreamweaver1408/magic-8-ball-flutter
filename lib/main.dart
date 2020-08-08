import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
          ),
          body: Magic(),
        ),
      ),
    );

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int ballNumber = 1;

  void shakeBall() {
    setState(
      () {
        ballNumber = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            shakeBall();
          },
          child: Image.asset('./images/ball$ballNumber.png'),
        ),
      ],
    );
  }
}
