import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[600],
        appBar: AppBar(
            title: Center(child: Text('MAGIC 8 BALL')),
            backgroundColor: Colors.teal),
        body: Magicball(),
      ),
    ),
  );
}

class Magicball extends StatefulWidget {
  @override
  _MagicballState createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {
  int answer = 2;

  void initState() {
    setState(() {
      answer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[Padding(
              padding: const EdgeInsets.fromLTRB(180, 0, 0,150.0),
              child: Text('Hello',
              style:TextStyle(
                fontSize: 30.0,
                fontFamily:'Pacifico',
                color:Colors.white,
                fontWeight:FontWeight.bold
              ) ,),
            )],
          ),
          FlatButton(
            onPressed: () {
              initState();
            },
            child: Image.asset('images/ball$answer.png'),
          ),
        ],
      ),
    );
  }
}
