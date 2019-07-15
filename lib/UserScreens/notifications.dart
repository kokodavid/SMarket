import 'package:flutter/material.dart';

class SmNotifications extends StatefulWidget {
  @override
  _SmNotificationsState createState() => _SmNotificationsState();
}

class _SmNotificationsState extends State<SmNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(" Order Notifications"),
      ),
      body: new Center(
        child: new Text("Order Notifications",
          style: new TextStyle(fontSize: 25.0),),
      ),
    );
  }
}
