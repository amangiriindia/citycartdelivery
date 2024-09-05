import 'package:flutter/material.dart';
import 'dart:async'; // Import for Timer

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    // Start a timer to navigate after 5 seconds
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login'); // Replace the current route
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Keep this to ensure the gradient works
      body: Stack( // Use Stack to layer the gradient and content
        children: [
          Container( // Container for the gradient
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(236, 191, 52, 0.5), // rgba(236, 191, 52, 0.5)
                  Color.fromRGBO(26, 69, 20, 0.0),   // rgba(26, 69, 20, 0)
                ],
              ),
            ),
          ),
          Center( // Center the Column within the Stack
            child: Column(
              // Remove mainAxisAlignment: MainAxisAlignment.spaceAround
              children: [
                // Top image
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Image.asset(
                    'assets/images/splash_top.png',
                    height: 350,
                    fit: BoxFit.cover, // Cover the full width
                    width: double.infinity,
                  ),
                ),

                // Centered logo
                Padding(
                  padding: const EdgeInsets.only(bottom: 10), // Adjust bottom padding
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 150,
                    width: 150,
                  ),
                ),

                // Progress bar
                Padding(
                  padding: const EdgeInsets.only(bottom: 20), // Adjust bottom padding
                  child: SizedBox(
                    height: 13, // Adjust the height as desired
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70), // Adjust horizontal padding as needed
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(90)), // Apply a 90 radius to all corners
                          color: const Color.fromARGB(255, 169, 208, 66), // Set background color here instead of LinearProgressIndicator
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(90)),
                          child: LinearProgressIndicator(
                            value: null, // Use null for an indeterminate progress bar
                            backgroundColor: Colors.transparent, // Set to transparent as background color is handled by DecoratedBox
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 20), // Adjust bottom padding
                  child: Text(
                    'Store App', // Replace with your app name
                    style: TextStyle(
                      fontFamily: 'Roboto', // Use Roboto font family
                      fontSize: 20, // Set font size
                      fontWeight: FontWeight.w400, // Set font weight
                      height: 1.25, // Set line height
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}