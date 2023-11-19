// ignore_for_file: depend_on_referenced_packages, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_1/widgets/drawer.dart';
import 'dart:convert';
// import 'package:flutter_catalog/models/catalog.dart';
// import 'package:flutter_catalog/widgets/drawer.dart';
// import 'package:flutter_catalog/widgets/item_widget.dart';

import '../models/catalog.dart';
import '../widgets/item_widget.dart';

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
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16
                    ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    // elevation: 1,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    child: GridTile(
                      child: Container(
                        child: Image.network(item.image),
                        padding: const EdgeInsets.all(10),
                        ),
                      header: Container(
                        child: Text(
                          item.name.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 119, 73, 246),
                        ),
                        ),
                      footer: Text(item.price.toString()),
                      )
                    );
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
