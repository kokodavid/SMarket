import 'package:flutter/material.dart';
class SmHistory extends StatefulWidget {
  @override
  _SmHistoryState createState() => _SmHistoryState();
}

class _SmHistoryState extends State<SmHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Order History"),
      ),
      body: new Center(
        child: new Text("History",
          style: new TextStyle(fontSize: 25.0),),
      ),
    );
  }
}
