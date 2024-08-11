import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ge_2/core/colors.dart';
import 'package:ge_2/screens/userscreens/onbordingscreen.dart';
import 'package:ge_2/screens/userscreens/userHomeScreen.dart';
import 'package:lottie/lottie.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
      backgroundColor: gcardGrey,
      splash: Center(
        child: Lottie.asset(
          "lib/assets/animations/splash2.json",

        ),
      ),
      duration: 4000,
      splashIconSize:250,

      nextScreen: OnBoardingScreen(),
      
    );
  }
}