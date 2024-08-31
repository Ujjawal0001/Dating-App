import 'package:dating_app/screens/login_screen.dart';
import 'package:dating_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.local_fire_department, size: 100, color: Colors.pink),
              SizedBox(height: 20),
              Text(
                'Find Your Soulmate',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Match and chat with people you like from your area',
                style: TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}