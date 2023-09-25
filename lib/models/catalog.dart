// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class Item {
  final String id;
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

final products = [Item(
  id: "s001", 
  name: "Iphone 12 Pro", 
  desc: "Apple iPhone 12 Pro", 
  price: 80000, 
  color: "#000000", 
  image: "C:\\Users\\acer\\Desktop\\Flutter\\Youtube\\CodePur\\flutter_1\\assets\\images\\apple-iphone-12-dummyapplefsn-original-imafwg8duby8qbn4-removebg-preview.png")
];
