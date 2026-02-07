import 'package:age_calculator/routes/const_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () => navigateToNextScreen());
  }

  @override
  void dispose() {

    super.dispose();
  }

  // Method to navigate
  void navigateToNextScreen() {
    Navigator.of(context).pushReplacementNamed(kDashboardScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 350,
            height: 400,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              gradient: const LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentGeometry.bottomCenter,
                colors: [Color(0xFF3e42a3), Color(0xFF6fc5ac)],
              ),
            ),
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/icons/age_calculator.svg',
                  height: 300,
                  semanticsLabel: 'Splash screen logo',
                ),

                Text(
                  "Age Calculator",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
