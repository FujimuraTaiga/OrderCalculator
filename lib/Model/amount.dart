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

  void setBeef(When when,int beef){
    data[when]!.beef = beef;
    notifyListeners();
  }

  void setPork(When when,int pork){
    data[when]!.pork = pork;
    notifyListeners();
  }

  void setChicken(When when,int chicken){
    data[when]!.chicken = chicken;
    notifyListeners();
  }

  int order(Meat meat, Sales sales){
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
    notifyListeners();
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