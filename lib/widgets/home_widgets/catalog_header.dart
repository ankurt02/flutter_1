import 'package:flutter/material.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          // "Catalog App".text.make(),
          Text(
            "Catalog App",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(29, 29, 29, 1)),
          ),
          // Icon(Icons.trending_up),
          Text(
            "Trending Products...",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          )
        ]);
  }
}