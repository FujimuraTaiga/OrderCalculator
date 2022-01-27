import 'package:flutter/material.dart';

import 'package:order_support/Const/meat.dart';
import 'package:order_support/Model/sales.dart';

class AmountDataBefore{

  int packPerSales;
  int today = 0;
  int tomorrow = 0;
  String order = '0';

  AmountDataBefore(this.packPerSales);
}

class AmountBefore extends ChangeNotifier{

  final data = {
    Meat.beef : AmountDataBefore(Beef.packPerSales),
    Meat.pork : AmountDataBefore(Pork.packPerSales),
    Meat.chicken : AmountDataBefore(Chicken.packPerSales),
  };
  final sales = SalesData();

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

  void setPackPerSales(Meat meat, int packPerSales){
    data[meat]!.packPerSales = packPerSales;
    calcOrder();
    notifyListeners();
  }

  //発注数を計算
  void calcOrder(){
    for(var meat in data.keys){
      int calc = ((sales.weekdaySales+sales.holidaySales+sales.holidaySales)/packPerSales(meat)).round()-data[meat]!.today-data[meat]!.tomorrow;
      data[meat]!.order = (calc>0) ? '$calc' : '0';
    }
  }
}