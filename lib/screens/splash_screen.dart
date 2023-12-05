import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:wisata_app/screens/dashboard_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    "assets/icons/default_logo.png",
                    width: 120,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 16),
                child: Image.asset(
                  "assets/icons/writing-logo.png",
                  width: 130,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ],
      ),
      splashIconSize: 1000,
      splashTransition: SplashTransition.fadeTransition,
      duration: 2000,
      backgroundColor: Colors.white,
      nextScreen: DashboardScreen(),
    );
  }
}
