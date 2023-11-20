// ignore_for_file: depend_on_referenced_packages, sort_child_properties_last, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_1/widgets/drawer.dart';
import 'package:flutter_1/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
// import 'package:flutter_catalog/models/catalog.dart';
// import 'package:flutter_catalog/widgets/drawer.dart';
// import 'package:flutter_catalog/widgets/item_widget.dart';

import '../models/catalog.dart';
import '../widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
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

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog);
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
          CatalogImage(
            image: catalog.image),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(catalog.name,
                  style: GoogleFonts.roboto(
                      fontSize: 28, fontWeight: FontWeight.w600)),
                catalog.desc.text.textStyle(context.captionStyle).make(),
                12.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.all(8),
                  children: [
                    "₹${catalog.price}".text.bold.xl.make(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        animationDuration: Duration(milliseconds: 100),
                        shape: MaterialStateProperty.all(StadiumBorder())
                      ),
                      child: Text("Buy")
                  )
                ],
              ).p4()
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
