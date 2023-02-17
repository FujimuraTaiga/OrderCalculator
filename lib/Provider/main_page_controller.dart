import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:order_support/UI/SalesPage/sales_page.dart';
import 'package:order_support/UI/SettingPage/setting_page.dart';
import 'package:order_support/UI/StockPage/stock_page.dart';

class PageControllerProperties {
  final int pageIndex;
  final List<Widget> pages = [
    SalesPage(),
    StockPage(),
    SettingPage(),
  ];

  Widget get page => pages.elementAt(pageIndex);

  PageControllerProperties({required this.pageIndex});

  PageControllerProperties copyWith({int? tabIndex}) {
    return PageControllerProperties(pageIndex: tabIndex ?? 0);
  }
}

class PageController extends StateNotifier<PageControllerProperties> {
  PageController(PageControllerProperties props) : super(props);

  int get index => state.pageIndex;
  Widget get tab => state.page;

  void changePage(int index) {
    state = state.copyWith(tabIndex: index);
  }
}

final pageProvider =
    StateNotifierProvider<PageController, PageControllerProperties>(
        (ref) => PageController(PageControllerProperties(pageIndex: 0)));
