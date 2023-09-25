// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class CatalogModel{

  static final items = [
    Item(
      id: 1, 
      name: "Iphone 12 Pro", 
      desc: "Apple iPhone 12 Pro", 
      price: 80000, // to change the format to : 80,000, ie. add a comma, the datatype can be changed to string, and then when using in item_widget, it can be used as .toString()
      color: "#000000", 
      image: "https://pngimg.com/uploads/iphone_12/iphone_12_PNG3.png"
    )
  ];

}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image}
  );
  // to chekc for the null safety, check the below link
  // https://www.bezkoder.com/dart-flutter-constructors/
  // https://stackoverflow.com/questions/66639287/how-to-create-a-constructor-in-flutter-with-null-safety
}


