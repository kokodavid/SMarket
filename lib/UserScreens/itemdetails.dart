import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';

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
    Size screenSize = MediaQuery.of(context).size;
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
          ),
          new Container(
            height: 300.0,
            decoration: new BoxDecoration(
              color: Colors.grey.withAlpha(50),
                    borderRadius: BorderRadius.only(
                bottomRight: new Radius.circular(120.0),
                bottomLeft: new Radius.circular(120.0)

            )
            ),
          ),
          new SingleChildScrollView(
            child: new Column(
              children: <Widget>[

              ],
            ),
          )
        ],
      ),
      floatingActionButton: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(new CupertinoPageRoute(
                  builder: (BuildContext context) => new SMcart())
              );}
            ,child: new Icon(Icons.shopping_cart),

          ),
          new CircleAvatar(
            radius:8.0,
            backgroundColor: Colors.red,
            child: new Text("0",
                style:new TextStyle(color: Colors.white,fontSize: 12.0)),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: new BottomAppBar(
        color: Theme.of(context).primaryColor,
        elevation: 0.0,
        shape: new  CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: new Container(
          height: 50.0,
          decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                width: (screenSize.width -20) / 2,
                child: new Text(
                    "ADD TO FAVOURITES",
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
              new Container(
                width: (screenSize.width -20) / 2,
                child: new Text(
                  "ORDER NOW",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
