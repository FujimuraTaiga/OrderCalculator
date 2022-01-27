import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:order_support/Model/sales.dart';
import 'package:order_support/Model/amount.dart';

import 'package:order_support/UI/SalesForm/sales_form.dart';
import 'package:order_support/UI/AmountForm/amount_form.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final amount = Amount();
    final sales = Sales();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Amount>.value(value: amount),
        ChangeNotifierProvider<Sales>.value(value: sales),
      ],
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.attach_money),),
              Tab(icon: Icon(Icons.set_meal),),
            ],
          ),
        ),
        body: TabBarView(
            children: [
              SalesForm(),
              const AmountForm(),
            ]
        ),
      ),
    );
  }
}
