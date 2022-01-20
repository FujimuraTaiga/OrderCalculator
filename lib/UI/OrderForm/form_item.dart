import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:order_support/UI/OrderForm/select_button.dart';
import 'package:order_support/Model/amount.dart';
import 'package:order_support/Const/meat.dart';
import 'package:order_support/Const/when.dart';

class FormItem extends StatelessWidget {

  final Meat meat;

  const FormItem(this.meat, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final amount = Provider.of<Amount>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(meat.name),
        Flexible(
          child: SelectButton(meat,When.today),
        ),
        Flexible(
          child: SelectButton(meat,When.tomorrow),
        ),
        SizedBox(
          width: 35.0,
          child: Text(
            '${amount.data[meat]!.order} P',
            style: const TextStyle(fontSize: 16.0,),
          ),
        ),
      ],
    );
  }
}
