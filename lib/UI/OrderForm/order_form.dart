import 'package:flutter/material.dart';

import 'package:order_support/UI/OrderForm/form_item.dart';
import 'package:order_support/Const/meat.dart';

class OrderForm extends StatelessWidget{

  const OrderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormItem(Beef()),
          FormItem(Pork()),
          FormItem(Chicken()),
        ],
      ),
    );
  }
}
