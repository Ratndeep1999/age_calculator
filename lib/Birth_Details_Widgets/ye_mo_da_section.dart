import 'package:flutter/material.dart';

class YeMoDaBox extends StatelessWidget {
  const YeMoDaBox({
    super.key,
    required this.bottomLabel,
    required this.yeMoDa,
    required this.boxColor,
  });

  final String bottomLabel;
  final String yeMoDa;
  final Color boxColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.18,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Center(
              /// yeMoDa
              child: Text(
                yeMoDa,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),

        /// Label text
        Text(
          bottomLabel,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}
