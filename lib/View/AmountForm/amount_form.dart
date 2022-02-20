import 'package:flutter/material.dart';

import 'package:order_support/Const/item.dart';

import 'package:order_support/View/AmountForm/amount_item.dart';
import 'package:order_support/View/AmountForm/sales_form.dart';

import 'amount_header.dart';

class AmountForm extends StatelessWidget {

  const AmountForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FormHeader(),
          const AmountItem(Item.beef),
          const AmountItem(Item.pork),
          const AmountItem(Item.chicken),
          const SizedBox(height: 20.0,),
          SalesForm(),
        ],
      ),
    );
  }
}
