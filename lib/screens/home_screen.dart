import 'package:dating_app/screens/home_screen.dart';
import 'package:dating_app/screens/loginSignup_screen.dart';
import 'package:dating_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}
class _HomeScreenPageState extends State<HomeScreen> {
  bool _isPersonIconSelected = false;
  bool _isWhatshotIconSelected = true;
  bool _isMessageIconSelected = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Removes the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.person, color: _isPersonIconSelected ? Colors.pink : Colors.grey),
                onPressed: () {
                  setState(() {
                    _isPersonIconSelected = true;
                    _isWhatshotIconSelected = false;
                    _isMessageIconSelected = false;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.whatshot, color: _isWhatshotIconSelected ? Colors.pink : Colors.grey),
                onPressed: () {
                  setState(() {
                    _isPersonIconSelected = false;
                    _isWhatshotIconSelected = true;
                    _isMessageIconSelected = false;

                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.message, color: _isMessageIconSelected ? Colors.pink : Colors.grey),
                onPressed: () {
                  setState(() {
                    _isPersonIconSelected = false;
                    _isWhatshotIconSelected = false;
                    _isMessageIconSelected = true;
                  });
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MessagePage()),
                  // );
                },
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.white, // AppBar background color set to white
        ),
        body: Column(
          children: [
            // Image with rounded corners and overlays
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage('images/girl.webp'), // Replace with your image asset
                        fit: BoxFit.cover,
                      ),
                    ),
                    margin: EdgeInsets.all(16.0),
                  ),
                  Positioned(
                    bottom: 20.0,
                    left: 20.0,
                    right: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Emilia Clarke',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Icon(Icons.school, color: Colors.black),
                            SizedBox(width: 8.0),
                            Text(
                              'Lovely Professional University',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.black),
                            SizedBox(width: 8.0),
                            Text(
                              'Punjab',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Round-shaped boxes with icons and shadow
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildRoundIconButton(Icons.close, Colors.red),
                  _buildRoundIconButton(Icons.star, Colors.yellow),
                  _buildRoundIconButton(Icons.favorite, Colors.green),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoundIconButton(IconData icon, Color color) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon, color: color),
        onPressed: () {
          // Handle button press
        },
      ),
    );
  }
}