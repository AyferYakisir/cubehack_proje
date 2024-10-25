import 'package:flutter/material.dart';

// ignore: must_be_immutable
class buildCalculatorteText extends StatelessWidget {
  String text;
  double fontSize;
  FontWeight? fontWeight;
  buildCalculatorteText({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
