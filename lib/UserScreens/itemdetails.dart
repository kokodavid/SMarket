import 'package:flutter/material.dart';

class SmItemDetails extends StatefulWidget {

  String itemName;
  double itemPrice;
  String itemImage;
  String itemRating;

  SmItemDetails({
    this.itemName,
    this.itemPrice,
    this.itemImage,
    this.itemRating
  });

  @override
  _SmItemDetailsState createState() => _SmItemDetailsState();
}

class _SmItemDetailsState extends State<SmItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: new AppBar(
  title: new Text("Item Details"),
  centerTitle: true,
  iconTheme:  IconThemeData(color: Colors.white),
),
      body: new Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          new Container(
            height: 300.0,
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new NetworkImage(widget.itemImage),
                  fit: BoxFit.fitHeight),borderRadius: BorderRadius.only(
              bottomRight: new Radius.circular(120.0),
                bottomLeft: new Radius.circular(120.0)

            )
            ),
          )
        ],
      ),
    );
  }
}
