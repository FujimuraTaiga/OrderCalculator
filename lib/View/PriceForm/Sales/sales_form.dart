import 'package:flutter/material.dart';
import 'package:order_support/Const/date.dart';
import 'package:order_support/Model/sales.dart';
import 'package:provider/provider.dart';

import 'package:order_support/View/PriceForm/sales_field.dart';

class SalesForm extends StatelessWidget {
  final TextEditingController today;
  final TextEditingController tomorrow;
  final TextEditingController dayAfter;

  const SalesForm(this.today, this.tomorrow, this.dayAfter, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Sales sales = Provider.of<Sales>(context);

    today.text = '${sales.getToday()}';
    tomorrow.text = '${sales.getTomorrow()}';
    dayAfter.text = '${sales.getDayAfter()}';

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${Date.today.day}日 '),
        SalesField(today),
        const SizedBox(width: 20),
        Text('${Date.tomorrow.day}日 '),
        SalesField(tomorrow),
        const SizedBox(width: 20),
        Text('${Date.dayAfter.day}日 '),
        SalesField(dayAfter),
      ],
    );
  }
}
