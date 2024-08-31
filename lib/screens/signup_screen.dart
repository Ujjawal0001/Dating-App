// lib/screens/signup_screen.dart

import 'package:dating_app/screens/loginSignup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  File? _image;

  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 40), // Add some space at the top
                Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the profile picture
                  children: [
        
                    Text(
                      'Create New Account',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink),
                      textAlign: TextAlign.left, // Center the text
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () async {
                        final pickedFile = await _picker.getImage(source: ImageSource.camera);
                        setState(() {
                          if (pickedFile!= null) {
                            _image = File(pickedFile.path);
                          } else {
                            _image = null;
                          }
                        });
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.pink,
                        child: _image!= null
                            ? Image.file(_image!)
                            : Icon(Icons.camera_alt, size: 30, color: Colors.white),
                      ),
                    )
                  ],
                ),
        
                SizedBox(height: 20),
                TextFormField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20), // Add a little round border radius
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20), // Add a little round border radius
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _mobileNumberController,
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20), // Add a little round border radius
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your mobile number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20), // Add a little round border radius
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address';
                    } else if (!value.contains('@')) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20), // Add a little round border radius
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 8) {
                      return 'Please enter a password with at least 8 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  controller: _confirmPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20), // Add a little round border radius
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your confirm password';
                    } else if (value != _passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {

                      print('Sign up successful');
                      print('First Name: ${_firstNameController.text}');
                      print('Last Name: ${_lastNameController.text}');
                      print('Mobile Number: ${_mobileNumberController.text}');
                      print('Email Address: ${_emailController.text}');
                      print('Password: ${_passwordController.text}');
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginSignupScreen()),
                      );
                    }
                  },
                  child: Container(
                    width: 200,
                    child: Center(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.white), // Set text color to white
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginSignupScreen()),
                    );
                  },
                  child: Container(
                    width: 200,
                      child: Center(
                          child: Text('Back to Login/Sign Up',style: TextStyle(color: Colors.white),))),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ],

            ),
          ),
        ),
      ),);
  }
}