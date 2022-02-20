import 'package:flutter/material.dart';
import 'package:order_support/View/AmountForm/amount_form.dart';
import 'package:order_support/View/PackPerSalesForm/pack_per_sales_form.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: '計算',),
              Tab(text: '値段',),
            ],
          ),
        ),
        body:  const TabBarView(
          children: [
            AmountForm(),
            PackPerSalesForm(),
          ],
        ),
      ),
    );
  }
}
