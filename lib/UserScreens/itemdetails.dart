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
                new SizedBox(
                  height: 50.0,
                ),
                new Card(
                  child: new Container(
                    width: screenSize.width,
                    margin: new EdgeInsets.only(left: 20,right: 20.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new SizedBox(
                          height: 10.0,
                        ),
                        new Text(
                          widget.itemName,
                          style: new TextStyle(
                            fontSize: 18.0, fontWeight:  FontWeight.w700
                          ),
                        ),

                        new SizedBox(
                          height: 10.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Icon(
                                  Icons.star,
                                color: Colors.blue,
                                  size: 20.0,)
                              ],
                            )
                          ],
                        ),
                        new SizedBox(
                          width: 5.0,
                        ),
                        new Text(
                          "${widget.itemRating}",
                          style: new TextStyle(
                              fontSize: 18.0,
                              fontWeight:  FontWeight.w700,
                              color: Colors.black
                          ),
                        ),
                        new Text(
                          "Ksh${widget.itemPrice}",
                          style: new TextStyle(
                              fontSize: 20.0,
                              color: Colors.red[500],
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),

                ),
                new Card(
                    child: new Container(
                      width: screenSize.width,
                      height: 150.0,
                      child: new ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return new Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                new Container(
                                  margin:
                                  new  EdgeInsets.only(left: 5.0 ,right: 5.0),
                                  height: 140.0,
                                  width: 100.0,
                                  child: new Image.network(widget.itemImage),
                                ),
                                new Container(
                                  margin:
                                  new  EdgeInsets.only(left: 5.0,right: 5.0),
                                  height: 140.0,
                                  width: 100.0,
                                  decoration: new BoxDecoration(
                                    color: Colors.grey.withAlpha(50)
                                  ),
                                )
                              ],
                            );
                          }
                      ),
                    ),
                ),
                new Card(
                  child: new Container(
                    width: screenSize.width,
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new SizedBox(
                          height: 10.0,
                        ),
                        new Text(
                          "Description",
                          style: new TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w700),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                        new Text(
                          "My item full information",
                          style: new TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w400),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),


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
