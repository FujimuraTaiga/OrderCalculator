import 'package:flutter/material.dart';

class SalesField extends StatelessWidget {

  final controller = TextEditingController();

  SalesField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}
