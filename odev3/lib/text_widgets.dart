import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextWidgets extends StatelessWidget {
  String text;
  String fontFamily;
  double fontSize;
  TextWidgets({
    super.key,
    required this.text,
    required this.fontFamily,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Text(
        text,
        style: TextStyle(fontFamily: fontFamily, fontSize: fontSize),
      ),
    );
  }
}
