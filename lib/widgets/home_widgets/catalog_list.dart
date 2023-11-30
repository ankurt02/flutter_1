// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_1/models/cart.dart';
import 'package:flutter_1/models/catalog.dart';
import 'package:flutter_1/pages/home_detail_page.dart';
import 'package:flutter_1/pages/home_page.dart';
import 'package:flutter_1/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_1/widgets/home_widgets/catalog_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(catalog: catalog))),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(image: catalog.image),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(catalog.name,
                  style: GoogleFonts.roboto(
                      fontSize: 28, fontWeight: FontWeight.w600)),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.all(4),
                children: [
                  "₹${catalog.price}".text.bold.xl.make(),
                  AddToCart(catalog: catalog),
                ],
              ).p2()
              //                     Text(
              //   catalog.desc,
              //   style: context.captionStyle?.copyWith(
              //     fontSize: 15,
              //     fontWeight: FontWeight.normal,
              //     color: Colors.grey.shade400,
              //   ),
              //   overflow: TextOverflow.ellipsis,
              // )
            ],
          ),
        )
      ],
    ))
        .white
        .withRounded(value: 8)
        .square(150)
        .clip(Clip.antiAlias)
        .make()
        .py4();
  }
}

