import 'package:flutter/material.dart';
import 'package:perfumee/bottomnavigation/navigation.dart';
import 'package:perfumee/screens/homescreen.dart';
import 'package:perfumee/screens/login.dart';
import 'package:perfumee/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
    );
  }
}
