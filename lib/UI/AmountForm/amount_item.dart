import 'package:flutter/material.dart';

import 'package:order_support/Const/date.dart';
import 'package:order_support/Const/item.dart';

import 'package:order_support/UI/AmountForm/sales_field.dart';
import 'package:order_support/UI/AmountForm/select_button.dart';

class AmountItem extends StatelessWidget {

  final Date date;

  const AmountItem(this.date, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('${date.day}日'),
          SelectButton(date,Item.beef),
          SelectButton(date,Item.pork),
          SelectButton(date,Item.chicken),
          SizedBox(
            height: 30,
            width: 70,
            child: SalesField(),
          ),
        ],
      ),
    );
  }
}
