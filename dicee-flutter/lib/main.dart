import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int leftButtonIndex = 1;
  int rightButtonIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeState();
              },
              child: Image.asset('images/dice$leftButtonIndex.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeState();
              },
              child: Image.asset('images/dice$rightButtonIndex.png'),
            ), 
          )
        ],
      ),
    );
  }

  void changeState(){
    setState(() {
      rightButtonIndex = Random().nextInt(5) + 1;
      leftButtonIndex = Random().nextInt(5) + 1;
    });
  }
}