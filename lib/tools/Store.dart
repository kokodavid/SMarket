import 'package:flutter/material.dart';

class Store{
  String itemName;
  double itemPrice;
  String itemImage;
  String itemRating;

  Store.items({
    this.itemName,
    this.itemPrice,
    this.itemImage,
    this.itemRating
});

}

List<Store> storeItems = [
  Store.items(
    itemName: "Bread",
    itemPrice: 50,
    itemImage: "",
    itemRating: "4.5"
  ),

  Store.items(
      itemName: "Bread",
      itemPrice: 50,
      itemImage: "",
      itemRating: "4.5"
  ),

  Store.items(
      itemName: "Bread",
      itemPrice: 50,
      itemImage: "",
      itemRating: "4.5"
  ),

  Store.items(
      itemName: "Bread",
      itemPrice: 50,
      itemImage: "",
      itemRating: "4.5"
  ),

  Store.items(
      itemName: "Bread",
      itemPrice: 50,
      itemImage: "",
      itemRating: "4.5"
  ),

  Store.items(
      itemName: "Bread",
      itemPrice: 50,
      itemImage: "",
      itemRating: "4.5"
  ),

  Store.items(
      itemName: "Bread",
      itemPrice: 50,
      itemImage: "",
      itemRating: "4.5"
  ),
  Store.items(
      itemName: "Bread",
      itemPrice: 50,
      itemImage: "",
      itemRating: "4.5"
  ),
];