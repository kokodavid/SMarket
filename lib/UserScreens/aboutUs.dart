import 'package:flutter/material.dart';

class SmAbout extends StatefulWidget {
  @override
  _SmAboutState createState() => _SmAboutState();
}

class _SmAboutState extends State<SmAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("About Us"),
      ),
      body: new Center(
        child: new Text("About",
            style:new TextStyle(fontSize: 25.0)),
      ),
    );;
  }
}
