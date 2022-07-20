import 'package:flutter/material.dart';

class NewRichtTextScreen extends StatelessWidget {
  final String text;
  final double fontSize;

  const NewRichtTextScreen({
    Key? key,
    required this.text,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
