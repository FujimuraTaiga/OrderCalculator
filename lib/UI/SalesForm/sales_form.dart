import 'package:flutter/material.dart';
import 'package:order_support/Model/amount.dart';
import 'package:provider/provider.dart';

class SalesForm extends StatelessWidget {
  final weekdaySales = TextEditingController();
  final holidaySales = TextEditingController();

  SalesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final data = Provider.of<Amount>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('平日：'),
            SizedBox(
              width: 100,
              child: TextField(controller: weekdaySales),
            ),
            const Text('万円'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('休日：'),
            SizedBox(
              width: 100,
              child: TextField(controller: holidaySales),
            ),
            const Text('万円'),
          ],
        ),
        ElevatedButton(
          child: const Text('確定'),
          onPressed: (){
            data.setSales(
                int.parse(weekdaySales.text)*10000,
                int.parse(holidaySales.text)*10000,
            );
          }
        ),
      ],
    );
  }
}
