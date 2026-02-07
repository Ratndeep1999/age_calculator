import 'package:age_calculator/dashboard_screen.dart';
import 'package:age_calculator/routes/const_routes.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: kSplashScreen,
      routes: {
        // add routes here
        kSplashScreen: (context) => SplashScreen(),
        kDashboardScreen: (context) => DashboardScreen(),
      },
    );
  }
}