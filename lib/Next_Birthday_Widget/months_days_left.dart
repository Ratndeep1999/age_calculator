import 'package:flutter/material.dart';

class MonthDayLeft extends StatelessWidget {
  const MonthDayLeft({
    super.key,
    required this.monDayLeft,
    required this.monDayLabel,
  });

  final String monDayLeft;
  final String monDayLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Months and Days Left for Next Birthday
        SizedBox(
          height: MediaQuery.of(context).size.height * 00.07,
          width: MediaQuery.of(context).size.height * 00.07,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Center(
              // months and days
              child: Text(
                monDayLeft,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        // label
        Text(monDayLabel, style: TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}
