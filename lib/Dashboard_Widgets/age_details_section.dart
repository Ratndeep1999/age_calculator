import 'package:flutter/material.dart';
import '../Age_Details_Widgets/old_details_section.dart';
import '../Age_Details_Widgets/ye_mo_da_section.dart';

class AgeDetails extends StatelessWidget {
  const AgeDetails({
    super.key,
    required this.years,
    required this.months,
    required this.days,
    required this.monthsOld,
    required this.weeksOld,
    required this.daysOld,
    required this.hoursOld,
    required this.minutesOld,
    required this.secondsOld,
  });

  final String years;
  final String months;
  final String days;
  final String monthsOld;
  final String weeksOld;
  final String daysOld;
  final String hoursOld;
  final String minutesOld;
  final String secondsOld;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
          color: Color(0xFFffffff),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8.0)],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              const Text(
                'You are (You age right now)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 12),

              /// Years, Months and Days Box
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /// Years
                  YeMoDaBox(
                    bottomLabel: 'Years',
                    yeMoDa: years,
                    boxColor: Color(0xFF6967db),
                  ),

                  /// Months
                  YeMoDaBox(
                    bottomLabel: 'Months',
                    yeMoDa: months,
                    boxColor: Color(0xFFcfd99d),
                  ),

                  /// Days
                  YeMoDaBox(
                    bottomLabel: 'Days',
                    yeMoDa: days,
                    boxColor: Color(0xFF7eecbb),
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              Divider(thickness: 1.3),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),

              /// Olds Details Section
              // months
              OldsDetails(old: 'Months old', value: monthsOld),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              // weeks
              OldsDetails(old: 'Weeks old', value: weeksOld),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              // days
              OldsDetails(old: 'Days old', value: daysOld),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              // hours
              OldsDetails(old: 'Hours old(approx)', value: hoursOld),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              // minutes
              OldsDetails(old: 'Minutes old(approx)', value: minutesOld),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              // seconds
              OldsDetails(old: 'Seconds old(approx)', value: secondsOld),
            ],
          ),
        ),
      ),
    );
  }
}
