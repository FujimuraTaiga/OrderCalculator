import 'package:flutter/material.dart';

class TextMedium extends StatelessWidget {
  const TextMedium(this.text) : super();

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
