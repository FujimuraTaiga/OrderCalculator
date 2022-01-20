import 'package:flutter/material.dart';
import 'package:order_support/Model/amount.dart';
import 'package:provider/provider.dart';

import 'OrderForm/order_form.dart';
import 'SalesForm/sales_form.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final amount = Amount();

    return ChangeNotifierProvider<Amount>.value(
      value: amount,
      child: Scaffold(
        body: TabBarView(
            children: [
              SalesForm(),
              const OrderForm(),
            ]
        ),
      ),
    );
  }
}
