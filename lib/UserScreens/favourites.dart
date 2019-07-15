import 'package:flutter/material.dart';

class SMFavoutites extends StatefulWidget {
  @override
  _SMFavoutitesState createState() => _SMFavoutitesState();
}

class _SMFavoutitesState extends State<SMFavoutites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My Favourites"),
        ),
      body: new Center(
        child: new Text("My Favourites",
            style:new TextStyle(fontSize: 25.0)),
      ),
    );
  }
}
