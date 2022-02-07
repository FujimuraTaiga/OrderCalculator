import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:order_support/Const/item.dart';
import 'package:order_support/Const/date.dart';

import 'package:order_support/Model/view_model.dart';

import 'package:order_support/UI/AmountForm/sales_field.dart';

class Order extends StatelessWidget {

  final double height = 46;

  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<ViewModel>(context);

    return SizedBox(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('${Date.dayAfter.day}日'),
          SizedBox(
            height: height,
            child: Center(child: orderText(vm.getOrder(Item.beef))),
          ),
          SizedBox(
            height: height,
            child: Center(child: orderText(vm.getOrder(Item.pork))),
          ),
          SizedBox(
            height: height,
            child: Center(child: orderText(vm.getOrder(Item.chicken))),
          ),
          SizedBox(
            height: 30,
            width: 70,
            child: SalesField(),
          ),
        ],
      ),
    );
  }

  Widget orderText(int order) {
    return Text(
      '${order}P',
      style: const TextStyle(
        fontSize: 17.0,
      ),
    );
  }
}
