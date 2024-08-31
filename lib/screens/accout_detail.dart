import 'package:flutter/material.dart';

class AccountDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // Account Details
                  Text(
                    'Account Details',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 10), // Add space
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Public Info',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Public Info

                  SizedBox(height: 10), // Add space

                  // Public Info List Tiles
                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey.shade100, width: 2),
                    ),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'First Name',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Ujjawal',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      tileColor: Colors.white, // Set list tile color to white
                    ),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey.shade100, width: 1),
                    ),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Last Name',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      tileColor: Colors.white, // Set list tile color to white
                    ),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey.shade100, width: 1),
                    ),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '20',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      tileColor: Colors.white, // Set list tile color to white
                    ),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey.shade100, width: 1),
                    ),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bio',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Student',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      tileColor: Colors.white, // Set list tile color to white
                    ),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey.shade100, width: 1),
                    ),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'College',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Lovely Proffessional University',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      tileColor: Colors.white, // Set list tile color to white
                    ),
                  ),

                  SizedBox(height: 10), // Add space

                  Divider(height: 1, thickness: 1), // Add divider

                  SizedBox(height: 10), // Add space

                  // Private Details
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Private Details',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey.shade100, width: 1),
                    ),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email Address',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'ujjwl0143@gmail.com',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      tileColor: Colors.white, // Set list tile color to white
                    ),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey.shade100, width: 1),
                    ),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '9110091744',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      tileColor: Colors.white, // Set list tile color to white
                    ),
                  ),
                ],
              ),
            ),

            // Save Button
            ElevatedButton(
              onPressed: () {
                // Add your save logic here
              },
              child: Text(
                'Save',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.pink, // Set text color to pink
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Set button color to white
                side: BorderSide(color: Colors.pink, width: 1), // Add border
              ),
            ),
          ],
        ),
      ),
    );
  }
}
