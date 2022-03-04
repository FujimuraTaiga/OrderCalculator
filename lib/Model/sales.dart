import 'package:flutter/material.dart';
import 'package:order_support/Const/date.dart';

class Sales with ChangeNotifier {
  int today = 0;
  int tomorrow = 0;
  int dayAfter = 0;

  void set(int today, int tomorrow, int dayAfter) {
    this.today = today * 10000;
    this.tomorrow = tomorrow * 10000;
    this.dayAfter = dayAfter * 10000;
    notifyListeners();
  }
}

class SalesService {
  final Sales _sales;
  SalesService(this._sales);

  int sumAll() {
    return _sales.today + _sales.tomorrow + _sales.dayAfter;
  }

  String getPrice(Date date) {
    double price;
    switch (date) {
      case Date.today:
        price = _sales.today / 10000;
        break;
      case Date.tomorrow:
        price = _sales.tomorrow / 10000;
        break;
      case Date.dayAfter:
        price = _sales.dayAfter / 10000;
        break;
    }
    return '${price.ceil()}';
  }
}
