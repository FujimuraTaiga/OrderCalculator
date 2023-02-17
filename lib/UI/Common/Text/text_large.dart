import 'package:flutter/material.dart';

class TextLarge extends StatelessWidget {
  const TextLarge(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
