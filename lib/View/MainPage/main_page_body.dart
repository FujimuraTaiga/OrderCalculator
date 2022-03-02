import 'package:flutter/material.dart';
import 'package:order_support/View/AmountForm/amount_form.dart';
import 'package:order_support/View/ExplainPage/explain_page.dart';
import 'package:order_support/View/NoticePage/notice_page.dart';
import 'package:order_support/View/PriceForm/price_form.dart';

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
              Tab(text: 'お知らせ'),
              Tab(text: '1. 金額入力'),
              Tab(text: '2. 発注数'),
              Tab(text: '使い方'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const NoticePage(),
            PriceForm(),
            const AmountForm(),
            const ExplainPage(),
          ],
        ),
      ),
    );
  }
}
