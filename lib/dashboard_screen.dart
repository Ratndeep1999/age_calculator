import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Dashboard_Widgets/birth_details_section.dart';
import 'Dashboard_Widgets/birthdate_section.dart';
import 'Dashboard_Widgets/next_birthday_section.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  DateTime selectedDate = DateTime.now();
  List<String> weekDay = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            children: [
              /// Birthdate Section
              Birthdate(
                selectBirthdate: () {
                  debugPrint('click calender icon');
                  selectBirthDate();
                },
                day: selectedDate.day.toString(),
                month: selectedDate.month.toString(),
                year: selectedDate.year.toString(),
                weekday: weekDay[selectedDate.weekday - 1],
              ),

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

  // method to show platform specific calender
  void selectBirthDate() {
    if (Platform.isAndroid) {
      // show android calendar
      showAndroidCalender();
    } else if (Platform.isIOS) {
      // show ios calender
    } else if (kIsWeb) {
      // show web calender
    }
  }

  // method to show android calender
  Future<void> showAndroidCalender() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900, 1, 1),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
      debugPrint(selectedDate.toString());
      debugPrint(weekDay[selectedDate.weekday - 1]);
    }
  }

  // method to show ios calender
  void showIosCalender() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            maximumDate: DateTime.now(),
            minimumDate: DateTime(DateTime.now().year - 100),
            initialDateTime: selectedDate,
            onDateTimeChanged: (DateTime nowDate) {
              setState(() {
                selectedDate = nowDate;
              });
            },
          ),
        );
      },
    );
  }
}
