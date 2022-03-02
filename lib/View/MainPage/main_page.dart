import 'package:flutter/material.dart';
import 'package:order_support/Model/Meat/beef.dart';
import 'package:order_support/Model/Meat/chicken.dart';
import 'package:order_support/Model/Meat/pork.dart';
import 'package:order_support/Model/sales.dart';
import 'package:provider/provider.dart';

import 'package:order_support/View/MainPage/main_page_body.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pork = Pork();
    final beef = Beef();
    final chicken = Chicken();
    final sales = Sales();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Pork>.value(value: pork),
        ChangeNotifierProvider<Beef>.value(value: beef),
        ChangeNotifierProvider<Chicken>.value(value: chicken),
        ChangeNotifierProvider<Sales>.value(value: sales),
      ],
      child: const MainPageBody(),
    );
  }
}
