import 'package:flutter/material.dart';
import 'package:order_support/Const/date.dart';
import 'package:order_support/Const/size.dart';

class SalesDate extends StatelessWidget {
  const SalesDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [
        SizedBox(
          width: WidgetSize.amountForm.width,
          child: const Text(''),
        ),
        SizedBox(
          width: WidgetSize.amountForm.width,
          child: Center(child: Text('${Date.today.day}日')),
        ),
        SizedBox(
          width: WidgetSize.amountForm.width,
          child: Center(child: Text('${Date.tomorrow.day}日')),
        ),
        SizedBox(
          width: WidgetSize.amountForm.width,
          child: Center(child: Text('${Date.dayAfter.day}日')),
        ),
      ],
    );
  }
}
