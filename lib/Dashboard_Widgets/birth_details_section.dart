import 'package:flutter/material.dart';
import '../Birth_Details_Widgets/old_details_section.dart';
import '../Birth_Details_Widgets/ye_mo_da_section.dart';

class BirthDetails extends StatelessWidget {
  const BirthDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      // height: 400,
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
              Text(
                'You are (You age right now)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 15),

              /// Years, Months and Days Box
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /// Years
                  YeMoDaBox(
                    bottomLabel: 'Years',
                    yeMoDa: '19',
                    boxColor: Color(0xFF6967db),
                  ),

                  /// Months
                  YeMoDaBox(
                    bottomLabel: 'Months',
                    yeMoDa: '5',
                    boxColor: Color(0xFFcfd99d),
                  ),

                  /// Days
                  YeMoDaBox(
                    bottomLabel: 'Days',
                    yeMoDa: '12',
                    boxColor: Color(0xFF7eecbb),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Divider(),

              /// Olds Details Section
              OldsDetails(),
            ],
          ),
        ),
      ),
    );
  }
}


