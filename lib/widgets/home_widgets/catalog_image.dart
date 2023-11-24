
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .withRounded(value: 8)
        .p8
        // .color(Color.fromARGB(255, 236, 236, 236))
        .make()
        // .p2()
        .whOneThird(context);
  }
}
