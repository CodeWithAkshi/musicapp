import 'package:flutter/material.dart';
import 'profilepage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart'; 
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          const Text(
            "Riffle",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Center(
              child: Lottie.asset(
                "assets/image.json", 
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Enjoy the music...",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
      nextScreen: ProfilePage(),
      splashIconSize: 300, 
      backgroundColor: Colors.black87,
    );
  }
}
