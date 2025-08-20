import 'package:flutter/material.dart';
import '../Next_Birthday_Widget/months_days_left.dart';

class NextBirthday extends StatelessWidget {
  const NextBirthday({
    super.key,
    required this.leftMonths,
    required this.leftDays,
    required this.weekday,
  });

  final String leftMonths;
  final String leftDays;
  final String weekday;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.175,
      width: MediaQuery.of(context).size.width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFF77f2b4),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            children: [
              // First Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // next birthday
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: const Text(
                      'Next Birthday',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                  /// Row for Both Box
                  Row(
                    children: [
                      /// Months Left
                      MonthDayLeft(
                        monDayLeft: leftMonths,
                        monDayLabel: 'Months',
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.06),

                      /// Days Left
                      MonthDayLeft(monDayLeft: leftDays, monDayLabel: 'Days'),
                    ],
                  ),
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.width * (20 / 360)),

              /// Next Birthday Weekday Section
              Expanded(
                child: RichText(
                  // textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      const TextSpan(text: 'Your birthday is on  '),
                      TextSpan(
                        text: weekday,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextSpan(text: ' this year'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
