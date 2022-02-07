import 'package:flutter/material.dart';

import 'package:order_support/Const/item.dart';

import 'package:order_support/UI/MainPage/AmountForm/amount_item.dart';
import 'package:order_support/UI/MainPage/AmountForm/sales_form.dart';

import 'amount_header.dart';

class AmountForm extends StatelessWidget {

  const AmountForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FormHeader(),
        const AmountItem(Item.beef),
        const AmountItem(Item.pork),
        const AmountItem(Item.chicken),
        const SizedBox(height: 20.0,),
        SalesForm(),
      ],
    );
  }
}
