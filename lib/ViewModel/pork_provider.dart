import 'package:flutter/material.dart';
import 'package:order_support/Model/Meat/pork.dart';

class PorkProvider with ChangeNotifier {
  final pork = Pork();

  void setToday(int today) {
    pork.today = today;
    notifyListeners();
  }

  void setTomorrow(int tomorrow) {
    pork.tomorrow = tomorrow;
    notifyListeners();
  }

  void setSales(int sales) {}
}
