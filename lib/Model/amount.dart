import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_support/Const/meat.dart';
import 'package:order_support/Const/when.dart';
import 'package:order_support/Model/sales.dart';

class AmountData{

  int date;
  bool isHoliday = false;
  int beef = 0;
  int pork = 0;
  int chicken = 0;

  AmountData(this.date);
}

class Amount extends ChangeNotifier{

  final data = {
    When.today : AmountData(DateTime.now().day),
    When.tomorrow : AmountData(DateTime.now().add(const Duration(days: 1)).day),
    When.dayAfterTomorrow : AmountData(DateTime.now().add(const Duration(days: 2)).day),
  };

  void setIsHoliday(When when){
    data[when]!.isHoliday = !data[when]!.isHoliday;
    notifyListeners();
  }

  void setBeef(When when,int beef,SalesData sales){
    data[when]!.beef = beef;
    data[When.dayAfterTomorrow]!.beef = order(Meat.beef,sales);
    notifyListeners();
  }

  void setPork(When when,int pork,SalesData sales){
    data[when]!.pork = pork;
    data[When.dayAfterTomorrow]!.pork = order(Meat.pork,sales);
    notifyListeners();
  }

  void setChicken(When when,int chicken,SalesData sales){
    data[when]!.chicken = chicken;
    data[When.dayAfterTomorrow]!.chicken = order(Meat.chicken,sales);
    notifyListeners();
  }

  int order(Meat meat, SalesData sales){
    int today = 0;
    int tomorrow = 0;
    switch(meat){
      case Meat.beef:
        today = data[When.today]!.beef;
        tomorrow = data[When.tomorrow]!.beef;
        break;
      case Meat.pork:
        today = data[When.today]!.pork;
        tomorrow = data[When.tomorrow]!.pork;
        break;
      case Meat.chicken:
        today = data[When.today]!.chicken;
        tomorrow = data[When.tomorrow]!.chicken;
        break;
    }
    int order = ((sales.holidaySales*countHoliday()+sales.weekdaySales*(3-countHoliday()))/packPerSales(meat)).round()-today-tomorrow;
    return order<0 ? 0 : order;
  }

  int countHoliday(){
    int count = 0;
    for(var data in data.values){
      if(data.isHoliday){
        count++;
      }
    }
    return count;
  }
}