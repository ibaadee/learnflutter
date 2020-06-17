import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        
        home: Scaffold(
          appBar: AppBar(
            title: Text('IDEIDE'),
            backgroundColor: Colors.blue,
          ),
          body: Magic8Balls(),
        ),
      ),
    );

class Magic8Balls extends StatefulWidget {
  @override
  _Magic8BallsState createState() => _Magic8BallsState();
}

class _Magic8BallsState extends State<Magic8Balls> {
  int index = 2;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          changeState();
        },
        child: Image(
          image: AssetImage('images/ball$index.png'),
        ),
      ),
    );
  }

  void changeState(){
    setState(() {
      index = Random().nextInt(4) + 1;
    });
  }
}