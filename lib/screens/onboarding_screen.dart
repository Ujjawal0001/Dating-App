// lib/screens/onboarding_screen.dart
import 'package:dating_app/screens/home_screen.dart';
import 'package:dating_app/screens/loginSignup_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink, // Set background color to pink
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                _buildOnboardingPage(
                  icon: Icons.local_fire_department,
                  title: 'Get a Date',
                  subtitle: 'Swipe right to get a match with people you like from your area',
                ),
                _buildOnboardingPage(
                  icon: Icons.message,
                  title: 'Private Messages',
                  subtitle: 'Chat privately with people you match',
                ),
                _buildOnboardingPage(
                  icon: Icons.camera,
                  title: 'Send Photos',
                  subtitle: 'Have fun with your matches by sending photos and videos to each other',
                ),
                _buildOnboardingPage(
                  icon: Icons.notifications,
                  title: 'Get Notified',
                  subtitle: 'Receive notifications when you get new messages and matches',
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navigate to the home screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginSignupScreen()),
                      );
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: Colors.white), // Set text color to white
                    ),
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < 4; i++)
                        i == _currentPage
                            ? Icon(Icons.circle, size: 12,
                            color: Colors.white) // Set icon color to white
                            : Icon(Icons.circle_outlined, size: 12,
                            color: Colors.white), // Set icon color to white
                    ],
                  ),
                  _currentPage == 3
                      ? ElevatedButton(
                    onPressed: () {
                      // Navigate to the home screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginSignupScreen()),
                      );
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white), // Set text color to white
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors
                        .pink), // Set button color to pink
                  )
                      : TextButton(
                    onPressed: () {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease);
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white), // Set text color to white
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOnboardingPage(
      {required IconData icon, required String title, required String subtitle}) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 100, color: Colors.white), // Set icon color to white
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            // Set text color to white
            textAlign: TextAlign.center, // Center the title
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              subtitle,
              style: TextStyle(fontSize: 18, color: Colors.white),
              // Set text color to white
              textAlign: TextAlign.center, // Center the subtitle
            ),
          ),
        ],
      ),
    );
  }
}