import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Candy TODO',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  Home(),
    );
  }
}

