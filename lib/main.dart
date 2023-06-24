// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// const keyword maintains the same value everywhere, just like constant keyword of anyother language, may be final keyword in Java

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
      child: Container(
          child: const Center(
        child: Text("Hello this is my first flutter application"),
      )),
    ));
  }
}
