// lib/main.dart
import 'package:dating_app/screens/accout_detail.dart';
import 'package:dating_app/screens/home_screen.dart';
import 'package:dating_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoveSpark',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), // Display the splash screen
    );
  }
}