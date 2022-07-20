import 'package:flutter/material.dart';

class NewRichtTextScreen extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  const NewRichtTextScreen({
    Key? key,
    required this.text,
    this.fontSize = 16,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: color,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
