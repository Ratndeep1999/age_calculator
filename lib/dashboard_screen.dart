import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Dashboard_Widgets/age_details_section.dart';
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
  String yearsOls = '0';
  String monthsOld = '0';
  String daysOld = '0';
  String totalMonthsOld = '00';
  String totalWeeksOld = '00';
  String totalDaysOld = '00';
  String totalHoursOld = '00';
  String totalMinutesOld = '00';
  String totalSecondsOld = '00';
  String nextBirthdayMonth = '0';
  String nextBirthdayDay = '0';
  String nextBirthdayWeekday = 'Weekday';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// Birthdate Section
                Birthdate(
                  selectBirthdate: () {
                    selectBirthDate();
                  },
                  day: selectedDate.day.toString(),
                  month: selectedDate.month.toString(),
                  year: selectedDate.year.toString(),
                  weekday: weekDay[selectedDate.weekday - 1],
                ),

                /// Birth Details Section
                AgeDetails(
                  years: yearsOls,
                  months: monthsOld,
                  days: daysOld,
                  monthsOld: totalMonthsOld,
                  weeksOld: totalWeeksOld,
                  daysOld: totalDaysOld,
                  hoursOld: totalHoursOld,
                  minutesOld: totalMinutesOld,
                  secondsOld: totalSecondsOld,
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                /// Next Birthday Section
                NextBirthday(
                  leftMonths: nextBirthdayMonth,
                  leftDays: nextBirthdayDay,
                  weekday: nextBirthdayWeekday,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Birthdate Section methods
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
        calculateAge();
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
                calculateAge();
              });
            },
          ),
        );
      },
    );
  }

  /// Age Details Section method
  void calculateAge() {
    // Get today date and time
    DateTime now = DateTime.now();

    // Get selected year, month, and day
    selectedDate = DateTime(
      selectedDate.year,
      selectedDate.month,
      selectedDate.day,
    );

    // Get current year, month, and day
    DateTime today = DateTime(now.year, now.month, now.day);

    // Get difference of years, months, and days from selected to current date
    int diffYears = today.year - selectedDate.year;
    int diffMonths = today.month - selectedDate.month;
    int diffDays = today.day - selectedDate.day;

    // Adjust if birthday hasn't occurred this year
    if (diffMonths < 0 || (diffMonths == 0 && diffDays < 0)) {
      diffYears--; // decrease one year
      diffMonths = diffMonths + 12; // Calculate accurate months
    }

    // Adjust days if negative
    if (diffDays < 0) {
      // Get last month year, month, and days. '0' means last day of previous month
      final lastMonth = DateTime(now.year, now.month, 0);
      diffDays = today.day + (lastMonth.day - selectedDate.day);
      diffMonths--; // Reduce months by 1 because i borrowed
    }

    // Ensure non-negative values
    diffMonths = diffMonths < 0 ? 0 : diffMonths;
    diffDays = diffDays < 0 ? 0 : diffDays;

    setState(() {
      yearsOls = diffYears.toString();
      monthsOld = diffMonths.toString();
      daysOld = diffDays.toString();
    });

    // Calculate Age Parameters
    int totalMonths = (diffYears * 12) + diffMonths;
    int totalDays = today.difference(selectedDate).inDays;
    int totalWeeks = (totalDays / 7).floor();
    int totalHours = totalDays * 24;
    int totalMinutes = totalHours * 60;
    int totalSeconds = totalMinutes * 60;

    setState(() {
      totalMonthsOld = totalMonths.toString();
      totalWeeksOld = totalWeeks.toString();
      totalDaysOld = totalDays.toString();
      totalHoursOld = totalHours.toString();
      totalMinutesOld = totalMinutes.toString();
      totalSecondsOld = totalSeconds.toString();
      calculateNextBirthday();
    });
  }

  /// Next Birthday Section Method
  void calculateNextBirthday() {
    // Get current date and time
    DateTime today = DateTime.now();

    // Get current year, month, and day
    today = DateTime(today.year, today.month, today.day);

    // Get current year, selected month, and selected day
    DateTime nextBirthday = DateTime(
      today.year,
      selectedDate.month,
      selectedDate.day,
    );

    // Checks next birthday is before today
    if (nextBirthday.isBefore(today)) {
      nextBirthday = DateTime(
        today.year + 1,
        selectedDate.month,
        selectedDate.day,
      );
    }

    // Calculate remaining months
    int monthsToNext = (nextBirthday.month - today.month + 12) % 12;

    // Calculate remaining days (can be negative)
    int daysToNext = nextBirthday.day - today.day;

    // Adjust days if negative
    if (daysToNext < 0) {

      // Get last day of previous month
      final lastMonth = DateTime(today.year, today.month, 0);
      daysToNext = daysToNext + lastMonth.day;
      monthsToNext--; // Reduce months by 1 because i borrowed
    }

    // Adjust accurate month
    if (monthsToNext < 0 || (monthsToNext == 0 && monthsToNext < 0)) {
      monthsToNext = monthsToNext + 12; // Calculate accurate months
    }

    // Ensure negative values
    monthsToNext = monthsToNext < 0 ? 0 :monthsToNext;

    // Get weekday of next birthday
    String dayName = weekDay[nextBirthday.weekday - 1];
    setState(() {
      nextBirthdayMonth = monthsToNext.toString();
      nextBirthdayDay = daysToNext.toString();
      nextBirthdayWeekday = dayName;
    });
  }
}