import 'package:flutter/material.dart';

class Product {
  int id;
  String image;
  String name;
  String descryption;
   String series;
  Color color;
  String price;
  List<ProductColor> productColors;

  Product(
      {this.id,
      this.image,
      this.name,
      this.descryption,
       this.series,
      this.color,
      this.price,
      this.productColors});
}

class ProductColor {
  String name;
  Color color;

  ProductColor({this.name, this.color});
}
