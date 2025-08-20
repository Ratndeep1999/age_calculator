import 'package:flutter/material.dart';

class Birthdate extends StatelessWidget {
  const Birthdate({
    super.key,
    required this.selectBirthdate,
    required this.day,
    required this.month,
    required this.year,
    required this.weekday,
  });

  final Function() selectBirthdate;
  final String day;
  final String month;
  final String year;
  final String weekday;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      width: MediaQuery.of(context).size.width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFF3c3fad),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'BirthDate',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      /// Date of Birth
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          '$day/$month/$year',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                      Text(
                        weekday,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),

                      /// Date picker Icon
                      IconButton(
                        onPressed: () {
                          // todo: call method
                          selectBirthdate();
                        },
                        // splashColor: Colors.transparent,
                        // highlightColor: Colors.transparent,
                        icon: Icon(
                          Icons.calendar_month_sharp,
                          color: Color(0xFF363d59),
                        ),
                      ),
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
