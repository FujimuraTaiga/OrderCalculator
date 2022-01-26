import 'package:flutter/material.dart';

class Sales{
  int weekdaySales = 0;
  int holidaySales = 0;
}

class SalesE extends ChangeNotifier{
  final sales = Sales();

  void setWeekdaySales(int weekdaySales){
    sales.weekdaySales = weekdaySales;
    notifyListeners();
  }

  void setHolidaySales(int holidaySales){
    sales.holidaySales = holidaySales;
    notifyListeners();
  }
}