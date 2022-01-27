import 'package:flutter/material.dart';
import 'package:order_support/Model/amount_before.dart';
import 'package:order_support/Model/sales.dart';
import 'package:provider/provider.dart';

class SalesForm extends StatelessWidget {
  final weekdaySales = TextEditingController();
  final holidaySales = TextEditingController();

  SalesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final sales = Provider.of<Sales>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        salesForm('平日売上', weekdaySales),
        const SizedBox(height: 20,),
        salesForm('休日売上',holidaySales),
        const SizedBox(height: 20,),
        ElevatedButton(
          child: const Text('確定'),
          onPressed: () => onPressed(sales),
        ),
      ],
    );
  }

  void onPressed(Sales sales){
    if(weekdaySales.text == ''||holidaySales.text == ''){

    }else{
      sales.setWeekdaySales(int.parse(weekdaySales.text)*10000);
      sales.setHolidaySales(int.parse(holidaySales.text)*10000);
    }
  }

  Widget salesForm(String text, TextEditingController controller){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('$text：'),
        SizedBox(
          width: 100,
          child: TextFormField(
            controller: controller,
            validator: (value){
              if(value == null){
                return '入力してください';
              }
            },
          ),
        ),
        const Text('万円'),
      ],
    );
  }
}
