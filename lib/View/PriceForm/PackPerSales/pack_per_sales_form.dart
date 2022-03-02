import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:order_support/Model/Meat/beef.dart';
import 'package:order_support/Model/Meat/chicken.dart';
import 'package:order_support/Model/Meat/pork.dart';
import 'package:order_support/View/PriceForm/sales_field.dart';

class PackPerSalesForm extends StatelessWidget {
  final TextEditingController porkController;
  final TextEditingController beefController;
  final TextEditingController chickenController;

  const PackPerSalesForm(
      this.porkController, this.beefController, this.chickenController,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pork = Provider.of<Pork>(context);
    final beef = Provider.of<Beef>(context);
    final chicken = Provider.of<Chicken>(context);

    porkController.text = '${pork.getPrice()}';
    beefController.text = '${beef.getPrice()}';
    chickenController.text = '${chicken.getPrice()}';

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${pork.name}: '),
        SalesField(porkController),
        const SizedBox(width: 20),
        Text('${beef.name}: '),
        SalesField(beefController),
        const SizedBox(width: 20),
        Text('${chicken.name}: '),
        SalesField(chickenController),
      ],
    );
  }
}
