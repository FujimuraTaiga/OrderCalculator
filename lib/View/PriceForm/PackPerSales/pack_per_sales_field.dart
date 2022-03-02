import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:order_support/Const/size.dart';

class PackPerSalesForm extends StatelessWidget {
  final TextEditingController controller;

  const PackPerSalesForm(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: WidgetSize.salesField.height,
          width: WidgetSize.salesField.width,
          child: TextFormField(
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
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
