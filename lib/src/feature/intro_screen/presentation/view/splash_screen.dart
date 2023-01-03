
import 'package:a_eye/src/feature/intro_screen/presentation/view/onboarding.dart';
import 'package:a_eye/src/share/res/app_string.dart';
import 'package:a_eye/src/share/res/function/navigate.dart';
import 'package:flutter/material.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    Future<dynamic> _navigateToOnBoarding() {
    return Future.delayed(const Duration(seconds: 3), () {
      // context.go(RoutePaths.onBoarding);
      navigateAndRemoveUntilRoute(context,  OnboardingScreen());
    });
  }

  @override
  void initState() {
    _navigateToOnBoarding();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset(AppString.appImage, height: 75,)),
      ),
    );
  }
}