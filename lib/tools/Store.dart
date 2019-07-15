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
    itemImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStUuF1qVP6tLAtqc0CvJp_GAxFRL9-KE8K2_AKh6EEyW_8nKcy",
    itemRating: "4.5"
  ),

  Store.items(
      itemName: "ToothBrush",
      itemPrice: 150,
      itemImage: "https://images-na.ssl-images-amazon.com/images/I/71YyoJkRvmL._SL1500_.jpg",
      itemRating: "3.5"
  ),

  Store.items(
      itemName: "Shoe Polish",
      itemPrice: 350,
      itemImage: "https://cdn.shoplightspeed.com/shops/617618/files/7302064/800x1024x1/kiwi-shoe-polish.jpg",
      itemRating: "4.5"
  ),

  Store.items(
      itemName: "Cookies",
      itemPrice: 150,
      itemImage: "http://www.pantryandlarder.com.au/images/Muesli%20Cookie%20&%20Package.jpg",
      itemRating: "4.5"
  ),

  Store.items(
      itemName: "Sony 4k Tv",
      itemPrice: 65050,
      itemImage: "https://o.aolcdn.com/images/dims?quality=85&image_uri=http%3A%2F%2Fo.aolcdn.com%2Fhss%2Fstorage%2Fmidas%2Fe114c54b74959c412adc69b7a6494233%2F200543687%2Fsony-s90-bravia-curved-tv-2014-08-07-01.jpg&client=amp-blogside-v2&signature=08ff81392c015c1c3efa825663db913f75f356bc",
      itemRating: "4.5"
  ),

  Store.items(
      itemName: "Toaster",
      itemPrice: 5050,
      itemImage: "https://www.oster.com/dw/image/v2/AAMB_PRD/on/demandware.static/-/Sites-master-catalog/default/dw0df5f482/images/highres/TSSTTRPMR2-1.jpg?sw=400&sh=400&sm=fit",
      itemRating: "4.5"
  ),

  Store.items(
      itemName: "Fried Chicken",
      itemPrice: 1000,
      itemImage: "https://www.shazans.com/wp-content/uploads/2018/04/5683518.jpeg",
      itemRating: "4.5"
  ),
  Store.items(
      itemName: "Cocacola ",
      itemPrice: 250,
      itemImage: "http://www.freepik.com/blog/wp-content/uploads/2016/04/01b-6.jpg",
      itemRating: "4.5"
  ),
];