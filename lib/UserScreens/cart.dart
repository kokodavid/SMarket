import 'package:flutter/material.dart';

class SMcart extends StatefulWidget {
  @override
  _SMcartState createState() => _SMcartState();
}

class _SMcartState extends State<SMcart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
title: new Text("Cart"),
      ),
      body: new Center(
        child: new Text("My Cart",
        style: new TextStyle(fontSize: 25.0),),
      ),
    );
  }
}
