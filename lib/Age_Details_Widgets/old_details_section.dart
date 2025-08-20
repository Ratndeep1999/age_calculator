import 'package:flutter/material.dart';

class OldsDetails extends StatelessWidget {
  const OldsDetails({super.key, required this.old, required this.value});

  final String old;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// old
        Text(
          old,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        /// value
        Text(
          value,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
