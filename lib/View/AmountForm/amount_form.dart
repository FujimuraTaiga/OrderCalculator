import 'package:flutter/material.dart';
import 'package:order_support/Model/Meat/beef.dart';
import 'package:order_support/Model/Meat/chicken.dart';
import 'package:order_support/Model/Meat/pork.dart';

import 'package:order_support/View/AmountForm/amount_item.dart';
import 'package:order_support/View/PriceForm/Sales/sales_form.dart';
import 'package:order_support/ViewModel/view_model.dart';
import 'package:provider/provider.dart';

import 'amount_header.dart';

class AmountForm extends StatelessWidget {
  const AmountForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pork = Provider.of<Pork>(context);
    final beef = Provider.of<Beef>(context);
    final chicken = Provider.of<Chicken>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FormHeader(),
          AmountItem(pork),
          AmountItem(beef),
          AmountItem(chicken),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
