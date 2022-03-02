import 'package:flutter/material.dart';
import 'package:order_support/Const/size.dart';

class SalesField extends StatelessWidget {

  final TextEditingController controller;

  const SalesField(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: WidgetSize.salesField.height,
          width:  WidgetSize.salesField.width,
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const Text('万'),
      ],
    );
  }
}
