import 'package:flutter/material.dart';

import 'package:order_support/Const/size.dart';
import 'package:order_support/Const/date.dart';
import 'package:order_support/Model/Meat/beef.dart';
import 'package:order_support/Model/Meat/chicken.dart';
import 'package:order_support/Model/Meat/meat.dart';
import 'package:order_support/Model/Meat/pork.dart';
import 'package:order_support/Model/sales.dart';
import 'package:provider/provider.dart';

class SelectButton extends StatelessWidget {
  final Date date;
  final Meat meat;

  const SelectButton(this.date, this.meat, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pork = Provider.of<Pork>(context);
    final beef = Provider.of<Beef>(context);
    final chicken = Provider.of<Chicken>(context);
    final sales = Provider.of<Sales>(context).sumSales();

    return SizedBox(
      width: WidgetSize.amountForm.width,
      child: (date == Date.today)
          ? DropdownButton<int>(
              items: items(20),
              value: meat.today,
              onChanged: (int? newValue) {
                if (meat.name == '豚') {
                  pork.setToday(newValue!, sales);
                } else if (meat.name == '牛') {
                  beef.setToday(newValue!, sales);
                } else if (meat.name == '鳥') {
                  chicken.setToday(newValue!, sales);
                }
              },
            )
          : DropdownButton<int>(
              items: items(20),
              value: meat.tomorrow,
              onChanged: (int? newValue) {
                if (meat.name == '豚') {
                  pork.setTomorrow(newValue!, sales);
                } else if (meat.name == '牛') {
                  beef.setTomorrow(newValue!, sales);
                } else if (meat.name == '鳥') {
                  chicken.setTomorrow(newValue!, sales);
                }
              },
            ),
    );
  }

  List<DropdownMenuItem<int>> items(int num) {
    List<DropdownMenuItem<int>> list = [];
    for (int i = 0; i < num; i++) {
      list.add(menuItem(i));
    }
    return list;
  }

  DropdownMenuItem<int> menuItem(int num) {
    return DropdownMenuItem<int>(
      child: Text('$num P'),
      value: num,
    );
  }
}
