// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:flutter_1/pages/home_page.dart';
import 'package:flutter_1/pages/login_page.dart';
import 'package:flutter_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

// main method is the entry point of the code
void main() {
  runApp(MyApp());
}
// const keyword maintains the same value everywhere, just like constant keyword of anyother language, may be final keyword in Java

// to run the application, run the emulator then from the terminal, run 'flutter run'
// to view the changes.... Ctrl + s (save) then in terminal 'r' to hot reload the application
class MyApp extends StatelessWidget {
   MyApp({super.key});

  // widget is a return type of build, each element on the screen is a widget
  // build is a method, BuildContext is parameter
  @override
  Widget build(BuildContext context) {
    // when initializing the function, the parameter given inside {} are used as a default value for the function
    // to ask for a mandatory parameter while calling the function, 
    //use <functionName>(@required <dataType> <formalParameterName>)

    return MaterialApp(

      // home: HomePage(),

      // below code is used to change the theme to dark or light
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,),
    debugShowCheckedModeBanner: false,  // removes the debug banner fro the top
    initialRoute: MyRoutes.homeRoute,  // This will be the initial page 
    routes: {
      MyRoutes.homeRoute :(context) => HomePage(), // by default
      MyRoutes.loginRoute :(context) => LoginPage(),
    },
    );
  }
}


