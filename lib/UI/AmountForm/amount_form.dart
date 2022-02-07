import 'package:flutter/material.dart';
import 'package:order_support/Const/date.dart';
import 'package:order_support/UI/AmountForm/amount_item.dart';
import 'package:order_support/UI/AmountForm/form_title.dart';
import 'package:order_support/UI/AmountForm/order.dart';

class AmountForm extends StatelessWidget {

  const AmountForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            FormTitle(),
            AmountItem(Date.today),
            AmountItem(Date.tomorrow),
            Order(),
          ],
        ),
        ElevatedButton(
            child: const Text('計算'),
            onPressed: (){

            },
        ),
      ],
    );
  }
}
