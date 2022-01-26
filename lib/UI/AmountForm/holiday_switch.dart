import 'package:flutter/material.dart';
import 'package:order_support/Const/when.dart';
import 'package:order_support/Model/amount.dart';
import 'package:provider/provider.dart';

class HolidaySwitch extends StatelessWidget {

  final When when;

  const HolidaySwitch(this.when,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final amount = Provider.of<Amount>(context);

    return Switch(
        value: amount.data[when]!.isHoliday,
        onChanged: (value){
          amount.setIsHoliday(when);
        }
    );
  }
}
