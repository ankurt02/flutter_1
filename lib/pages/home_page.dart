// ignore: file_names
// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_1/main.dart';
import 'package:flutter_1/models/catalog.dart';
import 'package:flutter_1/widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // int days = 2; // integer datatype
    // String name = ''; // String type
    // double hours = 8.0;
    // bool <varName> = true/false ;
    // num <varName> = can take both float and int
    // var <varName> = can take any data-type, the compiler will decide on what datatype to assign
    // const : value won't we changed
    // final : data can be modified
    // difference between final and cosnt: declaring a list as const we cannot change the data, but for final we can change the data

    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white60,
        // elevation: 1.5, // to remove the shadow and the elevation effect from the app bar
        // iconTheme: IconThemeData(color: Colors.black),

        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness:
                Brightness.dark, // to make the status bar transparent
            statusBarColor:
                Colors.transparent), // to set the icon of status bar to dark
        title: Text("Flutter App",
            style: GoogleFonts.nunito(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w500,
                fontSize: 22)), // to name the app
        centerTitle: true, // to position the name to center
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          // how the items will be displayed
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
