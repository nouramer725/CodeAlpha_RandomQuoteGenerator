import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'HomePage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: 'Montserrat',
      ),
      child: AnimatedSplashScreen(
        splash: Column(
          children: [
            Expanded(
              child: Center(
                child: Lottie.asset(
                    'assets/images/Animation - 1725817576751.json',
                    animate: true,
                    repeat: true,
                    reverse: true,
                    fit: BoxFit.cover
                ),
              ),
            ),
          ],
        ),
        nextScreen: const HomePage(),
        splashIconSize: 600,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor:Colors.white,
      ),
    );
  }
}