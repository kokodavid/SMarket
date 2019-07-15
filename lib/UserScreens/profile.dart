import 'package:flutter/material.dart';


class SmProfile extends StatefulWidget {
  @override
  _SmProfileState createState() => _SmProfileState();
}

class _SmProfileState extends State<SmProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My Profile Setting"),
      ),
      body: new Center(
        child: new Text("My Profile",
            style:new TextStyle(fontSize: 25.0)),
      ),
    );
  }
}
