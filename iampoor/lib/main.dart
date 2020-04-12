import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am Poor'),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1491833485966-73cfb9ccea53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80'),
                ),
              ),
              Expanded(
                child: Text('From Unsplash'),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
