
import 'package:flutter/material.dart';

class NewRichtText extends StatelessWidget {
  final String text;
  final double fontSize;

  const NewRichtText({
    Key? key,
    required this.text,
    this.fontSize = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
