import 'package:flutter/material.dart';

import 'package:order_support/UI/Common/Text/text_medeum.dart';

class SettingContent extends StatelessWidget {
  const SettingContent(
      {required this.icon, required this.text, required this.form, Key? key})
      : super(key: key);

  final IconData icon;
  final String text;
  final Widget form;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, size: 40),
              TextMedium(text),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => form),
        );
      },
    );
  }
}
