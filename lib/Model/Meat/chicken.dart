import 'package:flutter/material.dart';

import 'meat.dart';

class Chicken with ChangeNotifier implements Meat {
  @override
  String name = '鳥';
  @override
  int today = 0;
  @override
  int tomorrow = 0;
  @override
  int dayAfter = 0;
  @override
  int price = 60000;
  @override
  int need = 0;
  @override
  int order = 0;

  @override
  void setToday(int today, int sumSales) {
    this.today = today;
    setNeed(sumSales);
    notifyListeners();
  }

  @override
  void setTomorrow(int tomorrow, int sumSales) {
    this.tomorrow = tomorrow;
    setNeed(sumSales);
    notifyListeners();
  }

  @override
  void setPrice(double price, int sumSales) {
    this.price = (price * 10000).ceil();
    setNeed(sumSales);
    notifyListeners();
  }

  @override
  void setNeed(int sumSales) {
    need = (sumSales / price).ceil() - today - tomorrow;
  }

  @override
  double getPrice() {
    return price / 10000;
  }
}
