import 'package:flutter/material.dart';
import 'HomePage.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simulating a delay of 2 seconds before navigating to the home screen
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/home');
    });

    return Scaffold(
      backgroundColor: Color(0xff100A20) ,
      body: Stack(
        children: [
          // Background
          Container(
            color: Color(0xff100A20), // Set your desired background color
            // Add your background image or any other content here
          ),
          // Splash screen content at the center of the page
          Center(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'BO',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min, // Use MainAxisSize.min
                    children: [
                      Text(
                        'O',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 3,
                        width: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Text(
                    'KLY',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
