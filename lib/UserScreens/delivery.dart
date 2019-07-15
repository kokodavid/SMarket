import 'package:flutter/material.dart';

class SmDelivery extends StatefulWidget {
  @override
  _SmDeliveryState createState() => _SmDeliveryState();
}

class _SmDeliveryState extends State<SmDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My Delivery"),
      ),
      body: new Center(
        child: new Text("My Delivery",
            style:new TextStyle(fontSize: 25.0)),
      ),
    );  }
}
