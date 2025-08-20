import 'package:age_calculator/routes/const_routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () => navigateToNextScreen());
    super.initState();
  }
  // method to navigate
  void navigateToNextScreen(){
    Navigator.of(context).pushReplacementNamed(kDashboardScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Splash Screen')),
          ],
        ),
      ),
    );
  }
}
