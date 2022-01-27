import 'package:flutter/material.dart';

class SalesData{
  int weekdaySales = 0;
  int holidaySales = 0;
}

class Sales extends ChangeNotifier{
  final data = SalesData();

  void setWeekdaySales(int weekdaySales){
    data.weekdaySales = weekdaySales;
    notifyListeners();
  }

  void setHolidaySales(int holidaySales){
    data.holidaySales = holidaySales;
    notifyListeners();
  }
}