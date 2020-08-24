import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  int ballNum =1;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chat_Bot'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: SafeArea(
          child: Container(
            color: Colors.blue,
            child: Center(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    ballNum = Random().nextInt(5)+1;
                  });
                },
                child: Image.asset('images/ball$ballNum.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
