import 'package:flutter/material.dart';
import 'package:order_support/Const/meat.dart';
import 'package:order_support/Const/when.dart';
import 'package:order_support/Model/sales.dart';
import 'package:order_support/UI/AmountForm/holiday_switch.dart';
import 'package:provider/provider.dart';

import 'package:order_support/Model/amount.dart';

class Order extends StatelessWidget {

  final When when = When.dayAfterTomorrow;
  final double height = 46;

  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final amount = Provider.of<Amount>(context);
    final sales = Provider.of<SalesE>(context);

    return SizedBox(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('${amount.data[when]!.date}日'),
          SizedBox(
            height: height,
            child: Center(child: orderText('${amount.order(Meat.beef, sales.sales)}P')),
          ),
          SizedBox(
            height: height,
            child: Center(child: orderText('${amount.order(Meat.pork, sales.sales)}P')),
          ),
          SizedBox(
            height: height,
            child: Center(child: orderText('${amount.order(Meat.chicken, sales.sales)}P')),
          ),
          HolidaySwitch(when),
        ],
      ),
    );
  }

  Widget orderText(String order) {
    return Text(
      order,
      style: const TextStyle(
        fontSize: 17.0,
      ),
    );
  }
}
