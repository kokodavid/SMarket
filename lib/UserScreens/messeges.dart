import 'package:flutter/material.dart';

class SMMesseges extends StatefulWidget {
  @override
  _SMMessegesState createState() => _SMMessegesState();
}

class _SMMessegesState extends State<SMMesseges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My Messages"),
      ),
      body: new Center(
        child: new Text("My Messages",
            style:new TextStyle(fontSize: 25.0)),
      ),
    );
  }
}
