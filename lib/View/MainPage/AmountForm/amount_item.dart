import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:order_support/Const/size.dart';
import 'package:order_support/Const/date.dart';
import 'package:order_support/Const/item.dart';

import 'package:order_support/ViewModel/view_model.dart';

import 'package:order_support/View/FormItem/select_button.dart';

class AmountItem extends StatelessWidget {
  final Item item;

  const AmountItem(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ViewModel vm = Provider.of<ViewModel>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: WidgetSize.amountForm.width,
          child: Center(child: Text(item.name)),
        ),
        SelectButton(Date.today, item),
        SelectButton(Date.tomorrow, item),
        SizedBox(
          width: WidgetSize.amountForm.width,
          child: Center(
            child: Text(
              '${vm.itemData[item]!.order}P',
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
