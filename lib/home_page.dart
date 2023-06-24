// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days = 2; // integer datatype
    const String name = 'Ankur'; // String type
    // double hours = 8.0;
    // bool <varName> = true/false ;
    // num <varName> = can take both float and int
    // var <varName> = can take any data-type, the compiler will decide on what datatype to assign
    // const : value won't we changed
    // final : data can be modified
    // difference between final and cosnt: declaring a list as const we cannot change the data, but for final we can change the data
    return Scaffold(
      
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark), // to set the icon of status bar to dark
        title: const Text("Flutter App"), // to name the app
        centerTitle: true,  // to position the name to center
      ),

      body: Container(
        child: const Center(
          child: 
            Text("Hello! I am $name this is my first flutter application, day: $days"),
        )
      ),
      
      drawer: const Drawer(),
    );
  }
}