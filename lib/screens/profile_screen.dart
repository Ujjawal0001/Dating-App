import 'package:dating_app/screens/loginSignup_screen.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  bool _isPersonIconSelected = true;
  bool _isWhatshotIconSelected = false;
  bool _isMessageIconSelected = false;
  var imagePaths = [
    'images/ir.jpg',
    'images/th.jpg',
    'images/ir1.jpg',
    'images/ir2.jpg',
    'images/ir3.jpg',
    'images/ir4.jpg',
    'images/ir5.jpg',
  ];
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => WhatshotPage()),
                  // );
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
        body: ListView(
          children: [
            SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/ir.jpg'), // Replace with actual image
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.camera_alt, color: Colors.pink),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Tony Stark',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                // My Photos text
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'My Photos',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                // Scroll dots
                Positioned(
                  right: 16.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 12.0,
                        height: 12.0,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.pink,
                          // Pink color for the first dot
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Container(
                        width: 12.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey, // Gray color for the second dot
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              childAspectRatio: 1,
              children: List.generate(6, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15), // Rounded corners
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        imagePaths[index], // Replace with actual images
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 120),
            ListTile(
              leading: Icon(Icons.account_circle,color: Colors.blue,),
              title: Text('Account Details'),
              onTap: () {
                // Handle navigation to Account Details
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle navigation to Settings
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.call,color: Colors.green,),
              title: Text('Contact Us'),
              onTap: () {
                // Handle navigation to Contact Us
              },
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginSignupScreen()),
                  );
                },
                icon: Icon(Icons.logout),
                label: Text('Logout'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.red, // Text color
                  minimumSize: Size(double.infinity, 50), // Make the button full-width
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}