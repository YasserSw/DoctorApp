import 'package:doctor_application_2/features/onbording/ui/onbording.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/Splash Screen2.png',
      nextScreen: OnboardingScreen(),
      animationDuration: Duration(seconds: 1),
      centered: true,
      curve: Curves.easeInExpo,
      backgroundColor: Colors.white,
    );
  }
}
