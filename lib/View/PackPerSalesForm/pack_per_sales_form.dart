import 'package:flutter/material.dart';
import 'package:order_support/View/AmountForm/sales_field.dart';

import 'package:order_support/View/PackPerSalesForm/pack_per_sales_text.dart';
import 'package:order_support/ViewModel/view_model.dart';
import 'package:order_support/Const/item.dart';
import 'package:provider/provider.dart';

class PackPerSalesForm extends StatelessWidget {
  const PackPerSalesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        PackPerSalesText(),
        PriceForm(),
      ],
    );
  }
}

class PriceForm extends StatelessWidget {

  const PriceForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<ViewModel>(context);

    final beef = TextEditingController(text: '${vm.itemData[Item.beef]!.getPrice()}');
    final pork = TextEditingController(text: '${vm.itemData[Item.pork]!.getPrice()}');
    final chicken = TextEditingController(text: '${vm.itemData[Item.chicken]!.getPrice()}');

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SalesField(beef),
            SalesField(pork),
            SalesField(chicken),
          ],
        ),
        ElevatedButton(
          child: const Text('変更'),
          onPressed: (){
            double beefPrice = double.parse(beef.text);
            double porkPrice = double.parse(pork.text);
            double chickenPrice = double.parse(chicken.text);
            vm.setPrice(beefPrice, porkPrice, chickenPrice);
            vm.init();
          },
        ),
      ],
    );
  }
}

