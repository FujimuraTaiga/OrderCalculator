import 'package:flutter/material.dart';
import 'package:order_support/Model/Meat/meat.dart';

import 'package:order_support/Const/size.dart';
import 'package:order_support/Const/date.dart';

import 'package:order_support/View/AmountForm/select_button.dart';

class AmountItem extends StatelessWidget {
  final Meat meat;

  const AmountItem(this.meat, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: WidgetSize.amountForm.width,
          child: Center(child: Text(meat.name)),
        ),
        SelectButton(Date.today, meat),
        SelectButton(Date.tomorrow, meat),
        SizedBox(
          width: WidgetSize.amountForm.width,
          child: Center(
            child: Text(
              '${meat.need}P',
              style: TextStyle(
                fontSize: WidgetSize.amountForm.fontSize,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
