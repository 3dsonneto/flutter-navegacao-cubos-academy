import 'package:flutter/material.dart';
import 'package:navigation/third_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        "third": (context) => ThirdScreen(),
      },
    );
  }
}
