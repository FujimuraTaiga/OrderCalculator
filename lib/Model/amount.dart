import 'package:flutter/material.dart';

import 'package:order_support/Const/meat.dart';
import 'package:order_support/Model/sales.dart';

class AmountData{
  int today = 0;
  int tomorrow = 0;
  String order = '0';
}

class Amount extends ChangeNotifier{

  final data = {
    Beef() : AmountData(),
    Pork() : AmountData(),
    Chicken() : AmountData(),
  };
  final sales = Sales();

  void setToday(Meat meat,int today){
    data[meat]!.today = today;
    calcOrder();
    notifyListeners();
  }

  void setTomorrow(Meat meat,int tomorrow){
    data[meat]!.tomorrow = tomorrow;
    calcOrder();
    notifyListeners();
  }

  void setSales(int weekday,int holiday){
    sales.weekdaySales = weekday;
    sales.holidaySales = holiday;
    calcOrder();
    notifyListeners();
  }

  //発注数を計算
  void calcOrder(){
    for(var meat in data.keys){
      int calc = ((sales.weekdaySales+sales.holidaySales+sales.holidaySales)/meat.packPerSales).round()-data[meat]!.today-data[meat]!.tomorrow;
      data[meat]!.order = (calc>0) ? '$calc' : '0';
    }
  }
}