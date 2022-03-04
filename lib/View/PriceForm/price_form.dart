import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_support/Model/Meat/beef.dart';
import 'package:order_support/Model/Meat/chicken.dart';
import 'package:order_support/Model/Meat/pork.dart';
import 'package:order_support/Model/sales.dart';
import 'package:order_support/View/PriceForm/PackPerSales/pack_per_sales_form.dart';

import 'package:provider/provider.dart';

import 'Sales/sales_form.dart';

class PriceForm extends StatelessWidget {
  final today = TextEditingController();
  final tomorrow = TextEditingController();
  final dayAfter = TextEditingController();
  final porkController = TextEditingController();
  final beefController = TextEditingController();
  final chickenController = TextEditingController();

  PriceForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pork = Provider.of<Pork>(context);
    final beef = Provider.of<Beef>(context);
    final chicken = Provider.of<Chicken>(context);
    final sales = Provider.of<Sales>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          '売上予測の金額',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SalesForm(today, tomorrow, dayAfter),
        const Text(
          '1パックあたり売上',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        PackPerSalesForm(porkController, beefController, chickenController),
        ElevatedButton(
          child: const Text('変更'),
          onPressed: () {
            int todaySales = int.parse(today.text);
            int tomorrowSales = int.parse(tomorrow.text);
            int dayAfterSales = int.parse(dayAfter.text);
            sales.set(todaySales, tomorrowSales, dayAfterSales);

            final sumSales = SalesService(sales).sumAll();

            double porkPrice = double.parse(porkController.text);
            double beefPrice = double.parse(beefController.text);
            double chickenPrice = double.parse(chickenController.text);
            pork.setPrice(porkPrice, sumSales);
            beef.setPrice(beefPrice, sumSales);
            chicken.setPrice(chickenPrice, sumSales);

            FocusManager.instance.primaryFocus!.unfocus();
          },
        ),
      ],
    );
  }
}
