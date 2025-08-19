import 'package:flutter/material.dart';
import '../Birth_Details_Widgets/old_details_section.dart';
import '../Birth_Details_Widgets/ye_mo_da_section.dart';

class BirthDetails extends StatelessWidget {
  const BirthDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
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
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
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

              SizedBox(height: 20),
              Divider(thickness: 1.3,),
              SizedBox(height: 15,),

              /// Olds Details Section
              // months
              OldsDetails(old: 'Months old', value: '233',),
              SizedBox(height: 20,),
              // weeks
              OldsDetails(old: 'Weeks old', value: '1020',),
              SizedBox(height: 20,),
              // days
              OldsDetails(old: 'Days old', value: '7039',),
              SizedBox(height: 20,),
              // hours
              OldsDetails(old: 'Hours old(approx)', value: '168555',),
              SizedBox(height: 20,),
              // minutes
              OldsDetails(old: 'Minutes old(approx)', value: '10112273',),
              SizedBox(height: 20,),
              // seconds
              OldsDetails(old: 'Seconds old(approx)', value: '606735377',),
            ],
          ),
        ),
      ),
    );
  }
}


