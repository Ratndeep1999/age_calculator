import 'package:flutter/material.dart';

class NextBirthday extends StatelessWidget {
  const NextBirthday({
    super.key,
  });

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
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            children: [
              // First Colour
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // next birthday
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      'Next Birthday',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),

                  /// Row for Both Box
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /// Months
                      MonthDayLeft(),
                      SizedBox(
                        width:
                        MediaQuery.of(context).size.width * 0.06,
                      ),
                      /// Days
                      MonthDayLeft(),
                    ],
                  ),
                ],
              ),
              //Second Column
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
                      TextSpan(text: 'Your birthday is on '),
                      TextSpan(text: 'Thursday', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      TextSpan(text: '  this year'),
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

class MonthDayLeft extends StatelessWidget {
  const MonthDayLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Months and Days Left for Next Birthday
        SizedBox(
          height:
          MediaQuery.of(context).size.height *
              00.07,
          width:
          MediaQuery.of(context).size.height *
              00.07,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Center(
              // months and days
              child: Text(
                '6',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height:
          MediaQuery.of(context).size.height *
              0.01,
        ),
        // label
        Text(
          'Months',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}