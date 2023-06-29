// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // int days = 2; // integer datatype
    String name = ''; // String type
    // double hours = 8.0;
    // bool <varName> = true/false ;
    // num <varName> = can take both float and int
    // var <varName> = can take any data-type, the compiler will decide on what datatype to assign
    // const : value won't we changed
    // final : data can be modified
    // difference between final and cosnt: declaring a list as const we cannot change the data, but for final we can change the data
    return Scaffold(
            
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark, // to make the status bar transparent
          statusBarColor: Colors.transparent), // to set the icon of status bar to dark

        title: Text("Flutter App"), // to name the app
        centerTitle: true,  // to position the name to center
      ),

      body: Container(
        child: Center(
          child: 
            Text(
              "Hello",
              style: TextStyle(
                fontSize: 25,
              ),),
        )
      ),
      
      drawer: Drawer(),
    );
  }
}