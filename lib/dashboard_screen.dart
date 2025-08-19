import 'package:flutter/material.dart';
import 'Dashboard_Widgets/birth_details_section.dart';
import 'Dashboard_Widgets/birthdate_section.dart';
import 'Next_Birthday_Widget/next_birthday_section.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            children: [
              /// Birthdate Section
              Birthdate(),

              /// Birth Details Section
              BirthDetails(),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02),

              /// Next Birthday Section
              NextBirthday(),
            ],
          ),
        ),
      ),
    );
  }
}
