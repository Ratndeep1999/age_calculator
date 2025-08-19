import 'package:flutter/material.dart';

import '../Birth_Details_Widgets/ye_mo_da_section.dart';

class BirthDetails extends StatelessWidget {
  const BirthDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
          ),
          color: Color(0xFFffffff),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8.0)],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('You are (You age right now)'),
              SizedBox(height: 15),

              /// Years, Months and Days Box
              Row(
                children: [
                  /// Years
                  YeMoDaBox(),
                  /// Months
                  YeMoDaBox(),
                  /// Days
                  YeMoDaBox(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


