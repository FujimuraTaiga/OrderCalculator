import 'package:flutter/material.dart';
import 'package:order_support/Const/size.dart';
import 'package:order_support/Model/view_model.dart';
import 'package:order_support/UI/FormItem/sales_field.dart';
import 'package:order_support/UI/MainPage/AmountForm/sales_date.dart';
import 'package:provider/provider.dart';

class SalesForm extends StatelessWidget {

  final today = TextEditingController();
  final tomorrow = TextEditingController();
  final dayAfter = TextEditingController();

  SalesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ViewModel vm = Provider.of<ViewModel>(context);

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
                vm.setTodaySales(int.parse(today.text)*10000);
                vm.setTomorrowSales(int.parse(tomorrow.text)*10000);
                vm.setDayAfterSales(int.parse(dayAfter.text)*10000);
                vm.init();
                FocusManager.instance.primaryFocus!.unfocus();
              },
          ),
        ],
      ),
    );
  }
}
