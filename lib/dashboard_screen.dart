import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              /// Birthdate Section
              SizedBox(
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
                        Text(
                          'BirthDate',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 55,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                /// Date of Birth
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Text(
                                    '8/10/2003',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                /// Date picker Icon
                                IconButton(
                                  onPressed: () {},
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
              ),
              ///
              SizedBox(
                child: Card(
                  color: Color(0xFFffffff),
                  child: Column(
                    children: [
                      Text('You are (You age right now)'),
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
