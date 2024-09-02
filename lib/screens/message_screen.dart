import 'package:dating_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/screens/profile_screen.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  bool _isPersonIconSelected = false;
  bool _isWhatshotIconSelected = false;
  bool _isMessageIconSelected = true;

  var names = ["Larisa Mar", "Rachel Gell", "Monica Geller", "Larisa", "Frank", "Marta Popaes"];

  var names1 = ["Larisa", "Rachel", "Monica", "Larisa"];

  // Sample list to represent whether a profile is active or not
  final List<bool> _isActiveList = [true, false, true, false, true, false];

  // Sample messages corresponding to each profile
  final List<String> _messages = [
    "Hey, how are you?",
    "Let's catch up soon!",
    "Can you send me the details?",
    "Good morning!",
    "How was your day?",
    "Are you free tonight?"
  ];

  // Sample last seen times corresponding to each profile
  final List<String> _lastSeen = [
    "12:45 PM",
    "Yesterday",
    "10:30 AM",
    "2 days ago",
    "2:01 PM",
    "1 week ago",
  ];

  // List of image URLs corresponding to each profile
  final List<String> _imageUrls = [
    "assets/images/girl.webp", // Replace with actual image URL
    "assets/images/girl.webp", // Replace with actual image URL
    "assets/images/girl.webp", // Replace with actual image URL
    "assets/images/girl.webp", // Replace with actual image URL
    "assets/images/girl.webp", // Replace with actual image URL
    "assets/images/girl.webp", // Replace with actual image URL
  ];

  final List<String> _imageUrls1 = [
    "assets/images/girl.webp", // Replace with actual image URL
    "assets/images/girl.webp", // Replace with actual image URL
    "assets/images/girl.webp", // Replace with actual image URL
    "assets/images/girl.webp", // Replace with actual image URL
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon :Icon(Icons.arrow_back_ios_new),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.person,
                    color: _isPersonIconSelected ? Colors.pink : Colors.grey),
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
                icon: Icon(Icons.whatshot,
                    color: _isWhatshotIconSelected ? Colors.pink : Colors.grey),
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
                icon: Icon(Icons.message,
                    color: _isMessageIconSelected ? Colors.pink : Colors.grey),
                onPressed: () {
                  setState(() {
                    _isPersonIconSelected = false;
                    _isWhatshotIconSelected = false;
                    _isMessageIconSelected = true;
                  });
                },
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.white, // AppBar background color set to white
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(names1.length, (index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(_imageUrls1[index]), // Replace with actual image
                        ),
                        // Show status only if the profile is active
                        if (_isActiveList[index])
                          Positioned(
                            top: 40,
                            left: 40,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 2, color: Colors.white),
                              ),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      names1[index], // Use the name from the list
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                );
              }),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: names.length, // Adjust this according to the number of messages
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(_imageUrls[index]), // Replace with actual image
                                ),
                                if (_isActiveList[index])
                                  Positioned(
                                    top: 40,
                                    left: 40,
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: Colors.white),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  names[index], // Use the name from the list
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  _messages[index], // Display the corresponding message
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                Text(
                                  _lastSeen[index], // Display the corresponding last seen time
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
