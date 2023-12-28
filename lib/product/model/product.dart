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
      {required this.id,
      required this.image,
      required this.name,
      required this.descryption,
      required this.series,
      required this.color,
      required this.price,
      required this.productColors});
}

class ProductColor {
  String? name;
  Color? color;

  ProductColor({this.name, this.color});
}
