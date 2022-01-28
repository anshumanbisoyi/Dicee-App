import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[800],
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(color: Colors.red[800]),
          ),
          backgroundColor: Colors.white,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var RightDiceNumber = 1;
  void getDiceNumbers() {
    setState(() {
      RightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  getDiceNumbers();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  getDiceNumbers();
                },
                child: Image.asset('images/dice$RightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
