// lib/screens/splash_screen.dart
import 'package:dating_app/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _navigateToHomeScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnboardingScreen()), // Navigate to OnboardingScreen
    );
  }

  @override
  void initState() {
    super.initState();
    _navigateToHomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.pink, // Pink background
        ),
        child: Center(
          child: Text(
            'LoveSpark',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}