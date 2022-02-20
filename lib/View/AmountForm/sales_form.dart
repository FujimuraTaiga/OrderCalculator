import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:order_support/Const/size.dart';

import 'package:order_support/ViewModel/view_model.dart';

import 'package:order_support/View/AmountForm/sales_field.dart';
import 'package:order_support/View/AmountForm/sales_date.dart';

class SalesForm extends StatelessWidget {

  final today = TextEditingController();
  final tomorrow = TextEditingController();
  final dayAfter = TextEditingController();

  SalesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ViewModel vm = Provider.of<ViewModel>(context);

    final today = TextEditingController(text: '${vm.sales.getToday()}');
    final tomorrow = TextEditingController(text: '${vm.sales.getTomorrow()}');
    final dayAfter = TextEditingController(text: '${vm.sales.getDayAfter()}');

    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SalesDate(),
          SizedBox(
            height: WidgetSize.salesForm.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: WidgetSize.amountForm.width,
                  child: const Center(child: Text('売上')),
                ),
                SizedBox(
                  width: WidgetSize.amountForm.width,
                  child: SalesField(today),
                ),
                SizedBox(
                  width: WidgetSize.amountForm.width,
                  child: SalesField(tomorrow),
                ),
                SizedBox(
                  width: WidgetSize.amountForm.width,
                  child: SalesField(dayAfter),
                ),
              ],
            ),
          ),
          ElevatedButton(
            child: const Text('計算'),
              onPressed: (){
                int todaySales = int.parse(today.text);
                int tomorrowSales = int.parse(tomorrow.text);
                int dayAfterSales = int.parse(dayAfter.text);
                vm.setSales(todaySales, tomorrowSales, dayAfterSales);
                vm.init();
                FocusManager.instance.primaryFocus!.unfocus();
              },
          ),
        ],
      ),
    );
  }
}
