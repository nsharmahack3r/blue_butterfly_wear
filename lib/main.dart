import 'package:flutter/material.dart';
import 'package:wear_1/home_screen.dart';

import 'loading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blue Butterfly',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const LoadingScreen(),
    );
  }
}
