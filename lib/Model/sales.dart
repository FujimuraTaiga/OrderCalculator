import 'package:flutter/material.dart';

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

  int getToday() {
    return (today / 10000).ceil();
  }

  int getTomorrow() {
    return (tomorrow / 10000).ceil();
  }

  int getDayAfter() {
    return (dayAfter / 10000).ceil();
  }

  int sumSales() {
    return today + tomorrow + dayAfter;
  }
}
