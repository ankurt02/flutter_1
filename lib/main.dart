// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter_1/home_page.dart';
// main method is the entry point of the code
void main() {
  runApp(const MyApp());
}
// const keyword maintains the same value everywhere, just like constant keyword of anyother language, may be final keyword in Java

// to run the application, run the emulator then from the terminal, run 'flutter run'
// to view the changes.... Ctrl + s (save) then in terminal 'r' to hot reload the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
        home: HomePage());
  }
}
