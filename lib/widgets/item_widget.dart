// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\₹${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Color.fromARGB(255, 86, 23, 220),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
