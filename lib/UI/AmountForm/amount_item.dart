import 'package:flutter/material.dart';
import 'package:order_support/Const/meat.dart';
import 'package:order_support/Const/when.dart';
import 'package:order_support/Model/amount.dart';
import 'package:order_support/UI/AmountForm/holiday_switch.dart';
import 'package:order_support/UI/AmountForm/select_button.dart';
import 'package:provider/provider.dart';

class AmountItem extends StatelessWidget {

  final When when;

  const AmountItem(this.when, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final amount = Provider.of<Amount>(context);

    return SizedBox(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('${amount.data[when]!.date}日'),
          SelectButton(Meat.beef, when),
          SelectButton(Meat.pork, when),
          SelectButton(Meat.chicken, when),
          HolidaySwitch(when),
        ],
      ),
    );
  }
}
