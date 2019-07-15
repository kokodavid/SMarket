import 'package:flutter/material.dart';

class SmLoginLogout extends StatefulWidget {
  @override
  _SmLoginLogoutState createState() => _SmLoginLogoutState();
}

class _SmLoginLogoutState extends State<SmLoginLogout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login/Logout"),
      ),
      body: new Center(
        child: new Text("Login and Logout",
            style:new TextStyle(fontSize: 25.0)),
      ),
    );  }
}
