import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Align children to start
          children: [
            const SizedBox(height: 60), // Add more space at the top
            const Text(
              "Manage your\nDaily TO DO", // Added newline character
              style: TextStyle(
                fontSize: 36, // Increased font size
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50), // Increased space between text and image
            Image.asset(
              'assets/images/png-transparent-todo-list-schedule-business-teamwork-illustration-removebg-preview.png',
              height: 200, // Adjusted image height
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Text(
                "Without much worry just manage\n things as easy as piece of cake",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18, // Increased font size
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFD700), // Bright yellow color
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: const Text(
                "Create a Note",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black, // Black text for contrast on yellow
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
