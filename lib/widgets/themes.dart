// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: GoogleFonts.lato().fontFamily,
      // primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
          // fontFamily: 'OpenSans',
          fontSize: 20,
        ),
        
        // iconTheme: Theme.of(context).textTheme, // working in the video but not in mine
      ));

      static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
